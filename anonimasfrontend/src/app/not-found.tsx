'use client'
import Link from "next/link";

export default function NotFound() {
    return (
        <>
            <NotFoundPage/>
        </>
    )
}

import "./globals.css";
import React, { useEffect, useMemo, useRef, useState } from 'react'
import { Canvas, useFrame, useLoader } from '@react-three/fiber'
import { Mesh } from 'three'
import { Text } from '@react-three/drei'
import { OrbitControls } from '@react-three/drei'
import * as THREE from 'three'
type BoxProps = {
    position: [x: number, y: number, z: number]
}

const Box: React.FC<BoxProps> = (props) => {
    const mesh = useRef<Mesh>(null!)
    const [active, setActive] = useState(false)
    const randomSpeed = Math.floor(Math.random() * 5) / 200 + 0.005
    const randomSpeed2 = Math.floor(Math.random() * 5) / 200 + 0.005
    const randomRadius = Math.random() * 1.4
    const fontColor = 'black'

    const getRandomColor = (): string => {
        const red = Math.floor(Math.random() * 256)
            .toString(16)
            .padStart(2, '0')
        const green = Math.floor(Math.random() * 256)
            .toString(16)
            .padStart(2, '0')
        const blue = Math.floor(Math.random() * 256)
            .toString(16)
            .padStart(2, '0')
        return `#${red}${green}${blue}`
    }

    useEffect(() => {
        const segments = 32
        const sphereGeometry = new THREE.SphereGeometry(randomRadius, segments, segments)
        const material = new THREE.MeshStandardMaterial({ color: getRandomColor() })

        if (mesh.current) {
            mesh.current.geometry.dispose()
            mesh.current.geometry = sphereGeometry
            mesh.current.material = material
        }
    }, [randomRadius])

    useFrame(() => {
        mesh.current.rotation.x += randomSpeed
        mesh.current.rotation.y += randomSpeed2
    })

    return (
        <mesh {...props} ref={mesh} scale={active ? 1.5 : 1} onClick={() => setActive(!active)}>
            <boxGeometry args={[1, 1, 1]} />
            <meshStandardMaterial color={getRandomColor()} />
            <Text position={[0, 1, -randomRadius]} fontSize={randomRadius} color={fontColor}>
                404
            </Text>
            <Text position={[0, -randomRadius, 1]} fontSize={randomRadius} color={fontColor}>
                NotFound
            </Text>
        </mesh>
    )
}

const NotFoundPage = () => {
    const canvasRef = useRef<HTMLDivElement>(null)
    const createManyBox = useMemo(() => {
        const areaList = [
            [1, 1],
            [1, -1],
            [-1, 1],
            [-1, -1],
        ]
        const maxCount = 25
        const randomMul = 25
        const result: JSX.Element[] = []
        areaList.forEach((area) => {
            for (let i = 0; i < maxCount; i++) {
                const randomX = Math.random() * randomMul * area[0]
                const randomY = Math.random() * randomMul * area[1]
                const randomDepth = i % 2 === 1 ? 1 : -1
                const randomZ = Math.random() * randomMul * randomDepth
                result.push(<Box key={`${randomX}-${randomY}-${randomZ}`} position={[randomX, randomY, randomZ]} />)
            }
        })
        return result
    }, [])

    return (
        <div className={'notFoundPageArea'}>
            <div className={'notFoundTitleArea'}>
                <p className={'notFoundPageTitle'}>このページは存在しません</p>
                <p className={'notFoundPageSubTitle'}>URLを確かめてください</p>
            <Link href="/">トップページに戻る</Link>
            </div>
            <div ref={canvasRef} className={'canvas'}>
                <Canvas>
                    <ambientLight />
                    <pointLight position={[10, 15, 10]} />
                    {createManyBox}
                    {/*<color attach="background" args={["black"]}/>*/}
                    <OrbitControls enableZoom={true} enablePan={true} enableDamping={true} zoomSpeed={2} />
                    {/*<Environment preset="night" background />*/}
                </Canvas>
            </div>
        </div>
    )
}

