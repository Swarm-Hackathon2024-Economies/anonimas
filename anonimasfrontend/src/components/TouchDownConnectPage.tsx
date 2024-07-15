/* eslint-disable react/no-unescaped-entities */

export default function TouchDownConnectPage() {
    const BASE_PATH = process.env.BASE_PATH || "";
    return (
        <>

            <div style={{
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignItems: "center",
                width: '100%',
                overflow: "hidden"
            }}>
                <div style={{
                    position: "absolute",
                    top: "-150px",
                    width: "100%",
                    height: "290px",
                    background: "linear-gradient(to bottom right, gray, blue, green)",
                    borderRadius: "35%",
                    zIndex: -1
                }}></div>
                <h2 style={{
                    fontSize: "28px",
                    fontWeight: 700,
                    color: "white",
                    textAlign: "center",
                    margin: "12px 0"
                }}>
                    This is <br/>Touch Down Swarm !!
                </h2>
                <hr style={{
                    height: "3px",
                    background: "none",
                    width: '100%',
                    margin: 0,
                    borderStyle: "none",
                    marginBottom: "24px"
                }}/>
                <a style={{
                    margin: "0 16px 24px",
                    width: "100%",
                    display: 'inline-flex',
                    textDecoration: "none",
                    color: "black"
                }}
                   href="https://apps.apple.com/jp/app/touchdownswarm/id6532610918?itscg=30200&amp;itsct=apps_box_appicon"
                >
                    <img
                        src='./ecoIcon.png'
                        alt='ecconomiesIcon'
                        style={{
                            width: "100px",
                            height: "100px",
                            marginLeft: "6px",
                            marginRight: "12px",
                            borderRadius: "22%",
                            overflow: "hidden",
                            display: "inline-block",
                            verticalAlign: "middle"
                        }}
                    />
                    <div>
                        <h2 style={{
                            fontSize: "20px",
                            margin: "20px 0 0",
                            fontWeight: 800
                        }}>Touch Down Connect</h2>
                        <p style={{
                            fontSize: "14px",
                            margin: "6px 0 0 6px",
                            color: "gray",
                        }}>Economies</p>
                    </div>

                </a>
                <div style={{
                    width: "calc(100% - 16px)",
                    height: "calc(100vh - 92px - 27px - 124px - 24px - 8px - 41.5px - 12px)",
                    overflow: "scroll",
                    margin: "0 0 12px",
                    fontSize: "14px",
                    lineHeight: "130%",
                    color: "gray"
                }}>
                    <h3 style={{
                        margin: "0 0 8px",
                        fontSize: "16px",
                        color: "darkslategray"

                    }}>
                        Welcome to TOUCHDOWNSWARM!
                    </h3>
                    Sports enthusiasts who want to check event and venue information or connect with other fans,
                    rejoice! Especially for NFL fans, we present TOUCHDOWNSWARM, your ultimate sports companion.
                    <br/><br/>
                    <h3 style={{
                        margin: "0 0 8px",
                        fontSize: "16px",
                        color: "darkslategray"
                    }}>Event and Venue Information</h3>
                    TOUCHDOWNSWARM provides the latest event information and detailed venue details to ensure you
                    never miss out on any action. From game schedules to ticket availability and venue amenities,
                    everything you need is at your fingertips. You can easily browse upcoming events, find out where
                    they are happening, and get all the necessary details about the venues. Whether it's a local
                    game or a major league event, TOUCHDOWNSWARM keeps you informed and ready to enjoy the
                    experience to the fullest.
                    <br/><br/>
                    <h3 style={{
                        margin: "0 0 8px",
                        fontSize: "16px",
                        color: "darkslategray"

                    }}>Connect with Fellow Fans</h3>
                    One of the standout features of TOUCHDOWNSWARM is its ability to connect you with other sports
                    enthusiasts. Using innovative iOS multi-pairing technology, you can easily find and connect with
                    like-minded fans. Share your excitement, plan meet-ups, and create unforgettable memories with
                    friends who share your passion for sports. Whether you're organizing a tailgate party or just
                    looking to chat about the latest game, TOUCHDOWNSWARM makes it easy to build a community of
                    fans.
                    <br/><br/>
                    <h3 style={{
                        margin: "0 0 8px",
                        fontSize: "16px",
                        color: "darkslategray"

                    }}>Safe and Fun Experience</h3>
                    At TOUCHDOWNSWARM, we believe that enjoying sports should be both fun and safe. That's why we've
                    integrated features that reward safe driving habits. Earn points and compete in rankings by
                    driving safely to the venue. This not only adds an element of friendly competition but also
                    encourages responsible behavior. You can enjoy the game while ensuring your safety and the
                    safety of others on the road. TOUCHDOWNSWARM makes it possible to have a great time while
                    prioritizing safety.
                    <br/><br/>
                    <h3 style={{
                        margin: "0 0 8px",
                        fontSize: "16px",
                        color: "darkslategray"

                    }}>Join the TOUCHDOWNSWARM Community</h3>
                    Joining the TOUCHDOWNSWARM community is easy and rewarding. Download the app today and start
                    enhancing your sports experience. Whether you're a die-hard NFL fan or just enjoy catching a
                    game occasionally, TOUCHDOWNSWARM offers something for everyone. Become part of the ultimate fan
                    network and take your love for sports to the next level. With TOUCHDOWNSWARM, you'll always be
                    in the loop and connected with fellow fans.
                    <br/><br/>
                    Don't miss out on the opportunity to be part of this exciting community. Download TOUCHDOWNSWARM
                    now and experience the future of sports fandom. We're committed to providing you with the best
                    tools and features to make your sports experience enjoyable, safe, and connected.
                </div>
                <div style={{
                    width: "100%",
                    height: "41.5px",
                    display: "flex",
                    justifyContent: "space-between",
                    alignItems: "center"
                }}>
                    <p style={{
                        margin: "0",
                        fontSize: "10px",
                        lineHeight: "130%",
                        color: "gray",
                        marginLeft: "6px"
                    }}
                    >Copyright © 2024 Economies Inc.</p>
                    <a href="https://apps.apple.com/jp/app/touchdownswarm/id6532610918?itsct=apps_box_badge&amp;itscg=30200"
                       style={{
                           display: "inline-block",
                           overflow: "hidden",
                           borderRadius: "13px",
                           height: "41.5px",
                           margin: "0 6px"
                       }}><img
                        src="https://tools.applemediaservices.com/api/badges/download-on-the-app-store/black/en-us?size=250x83&amp;releaseDate=1720742400"
                        alt="Download on the App Store" style={{borderRadius: "13px", height: "41.5px"}}/></a>
                </div>
            </div>
        </>
    );
}