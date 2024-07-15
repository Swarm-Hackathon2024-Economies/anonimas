import styles from '@/components/PolicyPage.module.scss';

export default function TouchDownConnectPage() {
    const BASE_PATH = process.env.BASE_PATH || "";
    return (
        <>
            <div className="container">this is touch Down Swarm Page!!!</div>
            <a href="https://apps.apple.com/jp/app/touchdownswarm/id6532610918?itscg=30200&amp;itsct=apps_box_appicon"
               style={{width: '170px', height: '170px', borderRadius: '22%', overflow: 'hidden', display: 'inline-block', verticalAlign: 'middle'}}>
                <img
                    src="https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/e3/15/05/e3150511-e2e3-5e1b-1a8b-3ab87c36c619/AppIcon-0-0-1x_U007epad-0-0-85-220.png/540x540bb.jpg"
                    alt="TouchDownSwarm"
                    style={{width: '170px', height: '170px', borderRadius: '22%', overflow: 'hidden', display: 'inline-block', verticalAlign: 'middle'}}
                />
            </a>
            <a href="https://apps.apple.com/jp/app/touchdownswarm/id6532610918?itsct=apps_box_badge&amp;itscg=30200"
               style={{display: 'inline-block', overflow: 'hidden', borderRadius: '13px', width: '250px', height: '83px'}}>
                <img
                    src="https://tools.applemediaservices.com/api/badges/download-on-the-app-store/black/ja-jp?size=250x83&amp;releaseDate=1720742400"
                    alt="Download on the App Store"
                    style={{borderRadius: '13px', width: '250px', height: '83px'}}
                />
            </a>
            <img src="https://tools-qr-production.s3.amazonaws.com/output/apple-toolbox/88258c7b30d9b2face3f048e1dfe47a9/2cce712baf2f8cde90719941b96f8c54.png"/>
        </>
    );
}