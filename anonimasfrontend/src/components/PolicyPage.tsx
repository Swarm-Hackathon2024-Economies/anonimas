import styles from '@/components/PolicyPage.module.scss';

export default function PolicyPage() {
    const BASE_PATH = process.env.BASE_PATH || "";

    return (
        <div className={`${styles.policyPageArea} bg-gray-100 dark:bg-gray-900 p-6`}>
            <h2 className="bg-slate-100 dark:bg-slate-800 rounded-xl p-8 mb-6">利用規約</h2>
            <p className="mb-4">
                デジタル回遊アプリ”巡－めぐり－”利用規約（以下「本規約」といいます。）は、トヨタ自動車株式会社（以下「当社」といいます。）が運営・提供するデジタル回遊アプリ”巡－めぐり－”（以下「本サービス」といいます。）の利用条件を定めるものです。
            </p>
            <h3 className="text-xl font-semibold mb-2">第1条 （本規約の適用）</h3>
            <p className="mb-4">
                1. 本規約は、本サービスの提供及び利用に関して、本サービスをご利用になるお客様（以下「利用者」といいます。）と当社との間の関係一切に適用されます。
            </p>
            <p className="mb-4">
                2. 利用者が未成年者である場合は、親権者など法定代理人の同意（本規約への同意を含みます。）を得た上で本サービスを利用するものとします。また、本規約に同意した時点で未成年者であった利用者が、成年に達した後に本サービスを利用した場合には、未成年者であった間の利用行為を追認したものとみなします。
            </p>
            <h3 className="text-xl font-semibold mb-2">第2条 （本サービスの利用に関する契約の成立及び本規約の変更）</h3>
            <p className="mb-4">
                1. 利用者は、本規約を承諾のうえ、本サービスのアプリケーション画面により、当社に対して本サービスの利用を申し込むものとし、当社がこれを承認し、本サービスの利用ができる状態になった時点で、利用者と当社との間で本規約に基づく本サービスの利用に関する契約が成立するものとします。
            </p>
            <p className="mb-4">
                2. 当社は、本規約を変更する場合、本サービス又は当社ウェブサイト等の適宜の場所での提示その他の適切な方法により、変更後の本規約の内容及びその効力発生日を利用者に周知するものとし、当該効力発生日に本規約は変更されたものとします。但し、法令上、本規約の変更に利用者の同意が必要となる場合には、当社所定の方法により、当該変更につき利用者の同意を得るものとします。
            </p>
            <h3 className="text-xl font-semibold mb-2">第3条 （利用条件等）</h3>
            <p className="mb-4">
                1. 本サービスは、通信回線を経由し、利用者自身が管理使用するスマートフォンに本サービスのアプリケーションをダウンロードし、インストール後、当社所定の手続きを行うことにより利用できるサービスです。
            </p>
            <p className="mb-4">2. 当社は、利用者に対し、本規約の定めに従い、本サービスを使用する権利を許諾します。</p>
            <p className="mb-4">
                3. 本サービスは、利用者本人のみが利用することができます。当該利用者以外の第三者がこれらを利用した場合、当社は、当該利用者及び当該第三者に対して、何らの責任を負いません。
            </p>
            <h3 className="text-xl font-semibold mb-2">第4条 （利用の拒否・停止）</h3>
            <p className="mb-4">
                1. 当社は、利用者が任意に本サービスの申込みに必要な記載事項の一部又は全部を入力等しない場合及び本規約に承諾しない場合、本サービスの提供を行わないものとします。
            </p>
            <p className="mb-4">
                2. 当社は、利用者が次のいずれかに該当する場合、本サービスの利用開始後であっても本サービスの提供を停止することがあります。
            </p>
            <ul className="list-disc list-inside mb-4 space-y-2">
                <li>本規約に違反した場合</li>
                <li>本規約の違反等により、過去に本サービスの利用を停止されたことがあることが判明した場合</li>
                <li>本サービスの利用申込みに虚偽、誤記があることが判明した場合</li>
                <li>当社が提供するその他のサービスの利用規約に違反したことがあることが判明した場合</li>
                <li>本サービスを不正に利用した場合</li>
                <li>本サービスの運営を妨害した場合</li>
                <li>
                    反社会的勢力又は反社会的勢力と密接な交友関係を有する者に該当する場合。なお、本規約において反社会的勢力とは以下のいずれかを指します。
                    <ul className="list-decimal list-inside pl-4">
                        <li>暴力団</li>
                        <li>暴力団員及び暴力団員でなくなった時から5年を経過しない者</li>
                        <li>暴力団準構成員</li>
                        <li>暴力団関係企業</li>
                        <li>総会屋等、社会運動等標ぼうゴロ又は特殊知能暴力集団等</li>
                        <li>その他上記①から⑤に準ずる者</li>
                    </ul>
                </li>
                <li>
                    自ら又は第三者を利用して、暴力的な要求行為、法的な責任を超えた要求行為、脅迫的な言動若しくは暴力を用いる行為、風説を流布し、偽計若しくは威力を用いて当社の信用を毀損し、若しくは当社の業務を妨害する行為、又はこれらに準ずる行為を行った場合
                </li>
                <li>
                    利用者が、当社の取り扱う利用者の個人情報のうち、本サービスの運営又は提供に必要な情報について、利用停止、消去又は第三者提供の停止の請求を行った場合
                </li>
                <li>その他、当社が利用者として不適当と判断する場合</li>
            </ul>
            <p className="mb-4">
                3. 利用者は、次の各号の場合には、本サービスの全部又は一部が利用できない場合があります。
            </p>
            <ul className="list-disc list-inside mb-4 space-y-2">
                <li>利用者の届け出た情報の内容に誤りのある場合</li>
                <li>
                    スマートフォン又はその他周辺機器等が正しく設置若しくは接続されていない場合、又は故障、損壊、不具合等があり正常に作動しない場合、又はこれらの組み合わせにおいて不適合である場合、若しくは本サービスの利用に障害となるような機能設定をしている場合
                </li>
                <li>スマートフォン又はその他周辺機器の取扱説明書等に記載されている事項を遵守しなかった場合</li>
                <li>スマートフォン又はその他周辺機器等の電源が入っていない場合</li>
                <li>スマートフォン又はその他周辺機器等の電波の受信状況が悪い場合</li>
            </ul>
            <h3 className="text-xl font-semibold mb-2">第5条 （利用料金）</h3>
            <p className="mb-4">利用者は、本サービスを無料で利用することができます。</p>
            <h3 className="text-xl font-semibold mb-2">第6条 （パスワード・ID等の管理）</h3>
            <p className="mb-4">
                1. 本サービスは、ソーシャルログインを利用します。ソーシャルログインにあたっては、LINE、Google、Appleいずれかのアカウントが必要となります。利用者は、自己の責任において、ソーシャルログインの対象となるSNSアカウント並びに当該アカウントに関するパスワード・ID等を適切に管理および保管するものとし、これを第三者に利用させ、または貸与、譲渡、名義変更、売買等をしてはならないものとします。
            </p>
            <p className="mb-4">
                2. ソーシャルログインの対象となるSNSのアカウントまたは当該アカウントに関するパスワード・ID等の管理不十分、使用上の過誤、第三者の使用等によって生じた損害に関する責任は、利用者が負い、当社は一切の責任を負いません。
            </p>
            <p className="mb-4">
                3. 利用者は、他の利用者のSNSアカウントを使用して本サービスを利用することはできないものとします。利用者が他の利用者のSNSアカウントを使用して本サービスを利用した場合、利用者はそれによって当社に生じた一切の損害を直ちに賠償するほか、発生した一切の紛争をその責任と負担において解決するものとします。
            </p>
            <h3 className="text-xl font-semibold mb-2">第7条 （著作物等に関する権利等）</h3>
            <p className="mb-4">
                1. 本サービスで提供されるテキスト、画像、写真、音声及び動画等の情報（以下「著作物等」といいます。）に関する著作権、商標権、意匠権等の知的財産権は、次項に基づき利用者が著作物等を本サービスに保存、投稿又は共有する場合を除き、当社又は第三者（その他の利用者を含む）に帰属します。利用者は、本サービスを通じて入手した著作物等を、本サービス内で明示的に許諾した範囲、又は著作権法で認められた私的使用の範囲内に限り、利用できることとします。
            </p>
            <p className="mb-4">
                2. 利用者は、自らが必要な知的財産権を有する著作物等に限り、本サービスを利用して保存、投稿又は共有をすることができます。この場合、当該著作物等の知的財産権は、当該利用者に留保されます。ただし、当社は、本サービスを利用して保存、投稿又は共有された著作物等を無償で利用できるものとし、利用者は、この利用に関して、著作者人格権を行使しないものとします。これにより、利用者は、利用者が本サービスで投稿又は共有した著作物等を、他の利用者に閲覧可能とすることを承認することになります。
            </p>
            <p className="mb-4">
                3. 利用者は、当社に対し、利用者が本サービスを利用して保存、投稿又は共有した著作物等が当社又は第三者の権利を侵害していないことを保証するものとします。利用者が当社又は第三者の名誉を毀損した場合、プライバシー権を侵害した場合、許諾なく当社又は第三者の個人情報を開示した場合、著作権法に違反する行為を行った場合その他当社又は第三者の権利を侵害した場合は、当該利用者は自己の責任と費用において解決するものとします。
            </p>
            <p className="mb-4">4. 利用者は、利用者が本サービスを利用して保存、投稿又は共有した著作物等について、自らの責任においてバックアップをとるものとします。</p>
            <p className="mb-4">5. 利用者から、本サービス及び当社に寄せられた提案、感想、又はその他の意見については、当社において無償で自由に利用することができるものとします。</p>
            <h3 className="text-xl font-semibold mb-2">第8条 （禁止事項）</h3>
            <p className="mb-4">1. 利用者は、本サービスの利用にあたり、以下に定める行為を行わないものとします。</p>
            <ul className="list-disc list-inside mb-4 space-y-2">
                <li>当社若しくは第三者の著作権、商標権等の知的財産権、その他の権利を侵害する行為、又は侵害するおそれのある行為</li>
                <li>第三者のプライバシーを侵害する行為、又は侵害するおそれのある行為</li>
                <li>第三者に本サービスを利用させる行為</li>
                <li>本サービスへの不正アクセス、不正攻撃又はそのおそれのある行為</li>
                <li>本サービスの提供を不能にすること、その他本サービスの提供及びその運営に支障を与える行為、又はそのおそれのある行為</li>
                <li>当社の営業活動を妨害する行為、又は妨害するおそれのある行為</li>
                <li>当社若しくは第三者に不利益若しくは損害を与える行為、又はそのおそれのある行為</li>
                <li>犯罪的行為若しくは犯罪的行為に結びつく行為、又はそのおそれのある行為</li>
                <li>本サービスを利用することによって得られる一切の情報を業として利用する行為又は方法の如何を問わず第三者の利用に供する行為</li>
                <li>本サービスのアプリケーションの逆コンパイル、逆アセンブル等のリバースエンジニアリング行為</li>
                <li>本サービスを、他のアプリケーション、サービスと組み合わせて利用する行為（個別サービス及び外部サービスを除きます。）</li>
                <li>著作物等を削除又は改変する行為</li>
                <li>暴力的な要求行為、法的な責任を超えた不当な要求行為、脅迫的な言動若しくは暴力を用いる行為、又は、風説を流布し、偽計若しくは威力を用いて当社の信用を毀損し、若しくは当社の業務を妨害する行為</li>
                <li>本サービスのサービスに関連して、反社会的勢力に対して直接又は間接に利益を供する行為</li>
                <li>本規約に違反する行為</li>
                <li>法令、若しくは公序良俗に違反する行為、又は違反するおそれのある行為</li>
                <li>その他、当社が不適当と判断する行為</li>
            </ul>
            <p className="mb-4">2. 利用者は、本サービスにかかる契約上の地位の全部又は一部を第三者に譲渡し、承継させ、又は担保に供することはできません。</p>
            <h3 className="text-xl font-semibold mb-2">第9条 （個人情報）</h3>
            <p className="mb-4">
                当社は、本サービスの提供において取得する利用者の個人情報を、個人情報保護法および当社の定める個人情報に関する基本方針に従い、適切に取り扱います。
            </p>
            <p className="mb-4">1. 取得する個人情報と利用目的</p>
            <p className="mb-4">当社は、利用者から以下の個人情報（以下、「本件個人情報」といいます。）を取得します。</p>
            <p className="mb-4">
                氏名、ニックネーム、メールアドレス、位置情報、特定の個人が識別できる画像（プロフィール画像、参拝時に撮影した画像、等）、本サービスの操作履歴
            </p>
            <p className="mb-4">当社は、本件個人情報を、以下の利用目的のみに利用し、その他の目的に利用することはありません。</p>
            <ul className="list-disc list-inside mb-4 space-y-2">
                <li>本サービスを提供するため、本件個人情報を利用します。</li>
                <li>本サービス改善のために、利用者から寄せられたご意見、サービスの操作履歴等を利用します。</li>
                <li>利用者からのご要望、お問い合わせに対する回答をするために、利用者の氏名、メールアドレス等の個人情報を利用します。</li>
            </ul>
            <p className="mb-4">2. 個人情報の第三者への提供</p>
            <p className="mb-4">
                当社は、上記1条の定めに従って取得した本件個人情報を、個人情報保護法その他関連法令により認められる場合を除き、利用者の同意を得ずに第三者に提供することはございません。
            </p>
            <p className="mb-4">
                当社が保有する利用者の個人情報又は、当社所定の手続により開示をご請求いただくことができます。開示に必要な手続やその他個人情報に関するお問い合わせやご相談につきましては、下記「お客様サポート」で承ります。
            </p>
            <p className="mb-4">「巡-めぐり-」アプリお客様サポート</p>
            <p className="mb-4">連絡先： meguri_customer-support@mail.toyota.co.jp</p>
            <h3 className="text-xl font-semibold mb-2">第10条 （本サービスの中断及び変更）</h3>
            <p className="mb-4">
                1. 当社は、次のいずれかに該当すると判断した場合には、利用者へ通知することなく、本サービスの提供を一時的に中断することがあります。
            </p>
            <ul className="list-disc list-inside mb-4 space-y-2">
                <li>本サービスのシステム保守を定期的に、又は緊急に行う場合</li>
                <li>火災、停電、戦争、暴動、騒乱、労働争議などにより本サービスの提供ができなくなった場合</li>
                <li>地震、落雷、噴火、洪水、津波などの天災により本サービスの提供ができなくなった場合</li>
                <li>本サービスに用いる通信サービスが停止し、又は障害が発生した場合</li>
                <li>利用者のスマートフォンの使用環境その他の事情により通信障害が生じた場合</li>
                <li>その他、運用上又は技術上、当社が本サービスの提供を一時的に中断する必要がある場合</li>
            </ul>
            <p className="mb-4">
                2. 当社は、本サービスの一時中断のお知らせや利用者へのお知らせを行う場合、当社が適当と判断する方法で利用者にその旨を通知します。但し、緊急の場合又はやむを得ない事情により通知できない場合は、この限りではありません。
            </p>
            <p className="mb-4">3. 当社は、本サービスの提供又は機能の一部又は全部を、いつでも任意の理由で変更することがあります。</p>
            <h3 className="text-xl font-semibold mb-2">第11条 （本サービスの提供及び本規約の終了）</h3>
            <p className="mb-4">
                1. 当社は、利用者へ通知することなく、本サービスの提供を終了することができるものとします。なお、当社は、2024年12月末頃をもって本サービスの提供を終了することを予定しています。
            </p>
            <p className="mb-4">
                2. 当社が本サービスの提供を終了する場合、本規約は、本サービスの提供終了と同時に終了します。ただし、本規約第3条第3項、第6条第3項、第4項、第7条、本条、第12条、第14条乃至第16条は本規約終了後も有効に存続するものとします。
            </p>
            <p className="mb-4">3. 本サービスの提供終了後、利用者は本サービスを利用できず、保存、投稿又は共有した著作物等についても本サービス上で利用することはできません。</p>
            <h3 className="text-xl font-semibold mb-2">第12条 （損害賠償等）</h3>
            <p className="mb-4">
                1. 利用者が本規約に反した行為、又は不正若しくは違法な行為によって当社に損害を与えた場合、利用者は直ちに当社に生じた損害を賠償するものとします。
            </p>
            <p className="mb-4">
                2. 利用者が本サービスの利用によって第三者に対して損害を与えた場合、利用者は自己の責任と負担をもって解決し、当社には一切損害を与えないものとします。
            </p>
            <h3 className="text-xl font-semibold mb-2">第13条 （サービス利用についての不保証）</h3>
            <p className="mb-4">1. 当社は、本サービスの利用又はそのサービス提供の有用性及び正確性について保証しません。</p>
            <p className="mb-4">
                2. 利用者のスマートフォンのOSのバージョンやブラウザの環境等によって、利用者が利用できる各種機能の内容が異なる場合があり、当社は、利用者に対して本サービスの全ての機能を利用可能であることを保証しません。なお、当社は、以下のOS及びブラウザについて、本サービスの動作確認をしています。
            </p>
            <h3 className="text-xl font-semibold mb-2">第14条 （GPS取得精度についての不保証）</h3>
            <p className="mb-4">
                本サービスにて用いる位置情報とは、利用者のスマートフォンに搭載されるGPS機能で取得した緯度・経度情報及び基地局の情報（GPS機能を有していないスマートフォンの場合は、基地局の情報のみを用います。）を指します。スマートフォンに搭載されるGPS機能は、衛星からの電波を利用しているため、建物の中、高層ビル群地帯、高圧線の近く、密集した樹木の近くではGPSの電波を受信しにくい、若しくは受信できない場合があり、このような場合は基地局の情報のみを用いて位置の測位を行います。また、基地局の設置状況又はスマートフォンの電波状況により基地局情報を正確に取得することができない場合があります。これらの場合、位置情報と実際の位置に大きな誤差が生じることや、位置情報を得られないことがありますが、当社は、利用者の位置情報の取得の可否及びその正確性について一切保証せず、何ら責任を負わないものとします。
            </p>
            <h3 className="text-xl font-semibold mb-2">第15条 （免責）</h3>
            <p className="mb-4">
                1. 当社は、本サービスの利用に起因して利用者に生じたあらゆる不利益又は損害（本サービスの提供の拒否、停止、一時中断、変更又は終了することに起因して生じた不利益又は損害を含みます。）について、利用者に対して何らの義務も責任（損害賠償責任を含みます。）も負わないものとします。ただし、本サービスに関する当社と利用者との間の契約（本規約を含みます。）が消費者契約法に定める消費者契約となる場合、本項は適用されません。
            </p>
            <p className="mb-4">
                2. 前項ただし書に定める場合であっても、当社は、当社の過失（重過失を除きます。）による債務不履行又は不法行為により利用者に生じた損害のうち、間接損害、逸失利益に係る損害及び特別な事情から生じた損害（当社又は利用者が損害発生につき予見し、又は予見し得た場合を含みます。）について一切の責任を負いません。
            </p>
            <h3 className="text-xl font-semibold mb-2">第16条 （準拠法・合意管轄）</h3>
            <p className="mb-4">本規約の解釈及び本規約上の紛争解決に関する準拠法は日本法とし、本規約及び本サービスに関する法的紛争の一切に関しては、名古屋地方裁判所を第一審の専属的合意管轄裁判所とします。</p>
            <p className="mb-4">施行日</p>
            <p className="mb-4">2024年5月24日 施行</p>
        </div>
    )
}
