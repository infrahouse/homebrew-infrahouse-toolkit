class InfrahouseToolkit < Formula
  include Language::Python::Virtualenv

  desc "Toolkit for various operations on infrastructure components"
  homepage "https://github.com/infrahouse/infrahouse-toolkit"
  url "https://github.com/infrahouse/infrahouse-toolkit/archive/refs/tags/2.59.0.tar.gz"
  sha256 "96967fbcc2b4fba0e29f34d0de70d38cccb73dab5f6f522954c966f878fd6f08"
  license "Apache-2.0"

  depends_on "libsodium"
  depends_on "openssl@3"
  depends_on "python@3.12"
  depends_on "rust"

  resource "acme" do
    url "https://files.pythonhosted.org/packages/8b/4f/813bc8c11a2b705e9c18d0e806aa8f069aa8faca58188500c781a793b364/acme-5.4.0.tar.gz"
    sha256 "906e6cca7f58b5526c0ddfe3d71a7a41f8fa10acf3b083dd35cf619b5b015ca8"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/0a/2e/67206daa5acb6053157ae5241421713a84ed6015d33d0781985bd5558898/boto3-1.42.66.tar.gz"
    sha256 "3bec5300fb2429c3be8e8961fdb1f11e85195922c8a980022332c20af05616d5"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/77/ef/1c8f89da69b0c3742120e19a6ea72ec46ac0596294466924fdd4cf0f36bb/botocore-1.42.66.tar.gz"
    sha256 "39756a21142b646de552d798dde2105759b0b8fa0d881a34c26d15bd4c9448fa"
  end

  resource "cached-property" do
    url "https://files.pythonhosted.org/packages/76/4b/3d870836119dbe9a5e3c9a61af8cc1a8b69d75aea564572e385882d5aefb/cached_property-2.0.1.tar.gz"
    sha256 "484d617105e3ee0e4f1f58725e72a8ef9e93deee462222dbd51cd91230897641"
  end

  resource "certbot" do
    url "https://files.pythonhosted.org/packages/f2/e3/199262bf00c9bd5dfccfe0a64c26c2fb132b92511bee416c3408a54b4cf1/certbot-4.2.0.tar.gz"
    sha256 "fb1e56ca8a072bec49ac0c7b5390a29cbf68c2c05f712259a9b3491de041c27b"
  end

  resource "certbot-dns-route53" do
    url "https://files.pythonhosted.org/packages/e1/0f/51d97350fdcd74d59a4681a4f27ff4517c47634a08a5c679006da1a6eb20/certbot_dns_route53-4.2.0.tar.gz"
    sha256 "fc0e59ad7e0f04c373e6e412da4d90fc6f5eec7317eb94e0b785367830e6daea"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/1d/35/02daf95b9cd686320bb622eb148792655c9412dbb9b67abb5694e5910a24/charset_normalizer-3.4.5.tar.gz"
    sha256 "95adae7b6c42a6c5b5b559b1a99149f090a57128155daeea91732c8d970d8644"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "configargparse" do
    url "https://files.pythonhosted.org/packages/3f/0b/30328302903c55218ffc5199646d0e9d28348ff26c02ba77b2ffc58d294a/configargparse-1.7.5.tar.gz"
    sha256 "e3f9a7bb6be34d66b2e3c4a2f58e3045f8dfae47b0dc039f87bcfaa0f193fb0f"
  end

  resource "configobj" do
    url "https://files.pythonhosted.org/packages/f5/c4/c7f9e41bc2e5f8eeae4a08a01c91b2aea3dfab40a3e14b25e87e7db8d501/configobj-5.0.9.tar.gz"
    sha256 "03c881bbf23aa07bccf1b837005975993c4ab4427ba57f959afdd9d1a2386848"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/a7/35/c495bffc2056f2dadb32434f1feedd79abde2a7f8363e1974afa9c33c7e2/cryptography-45.0.7.tar.gz"
    sha256 "4b1654dfc64ea479c242508eb8c724044f1e964a47d1d1cacc5132292d851971"
  end

  resource "diskcache" do
    url "https://files.pythonhosted.org/packages/3f/21/1c1ffc1a039ddcc459db43cc108658f32c57d271d7289a2794e401d0fdb6/diskcache-5.6.3.tar.gz"
    sha256 "2c3a3fa2743d8535d832ec61c2054a1641f41775aa7c556758a109941e33e4fc"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "ec2-metadata" do
    url "https://files.pythonhosted.org/packages/23/0e/8b1c10e9204fbd2103f4cf53ca42878228b48bcdf5155878d34d747d35a6/ec2_metadata-2.17.0.tar.gz"
    sha256 "ad98a5afd8f4f49f688e4899dc505257da3237348761eceeb0fc7fc7d00cc90d"
  end

  resource "elastic-transport" do
    url "https://files.pythonhosted.org/packages/f1/5e/9d697ca2511c2ecb3a239be91d5186a14fdbc97e15369c4ca6524c2929e8/elastic-transport-8.12.0.tar.gz"
    sha256 "48839b942fcce199eece1558ecea6272e116c58da87ca8d495ef12eb61effaf7"
  end

  resource "elasticsearch" do
    url "https://files.pythonhosted.org/packages/dc/e3/9be84318c57c7c1f488586fcf1f37edb907dfad8c9450f66429e04d7568a/elasticsearch-8.12.1.tar.gz"
    sha256 "00c997720fbd0f2afe5417c8193cf65d116817a0250de0521e30c3e81f00b8ac"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/72/94/63b0fc47eb32792c7ba1fe1b694daec9a63620db1e313033d18140c2320a/gitdb-4.0.12.tar.gz"
    sha256 "5ef71f855d191a3326fcfbc0d5da835f26b13fbcba60c32c21091c349ffdb571"
  end

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/df/b5/59d16470a1f0dfe8c793f9ef56fd3826093fc52b3bd96d6b9d6c26c7e27b/gitpython-3.1.46.tar.gz"
    sha256 "400124c7d0ef4ea03f7310ac2fbf7151e09ff97f2a3288d64a440c584a29c37f"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "infrahouse-core" do
    url "https://files.pythonhosted.org/packages/b9/d9/dbde028f48375cfb31a50bf4289539a8335ea29602f4c0d91534ee6e5b93/infrahouse_core-0.23.4.tar.gz"
    sha256 "9c16194ca418ea88439f5c8e470c2249e653cf29942df6d3c16b532ee74f5e24"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/d3/59/322338183ecda247fb5d1763a6cbe46eff7222eaeebafd9fa65d4bf5cb11/jmespath-1.1.0.tar.gz"
    sha256 "472c87d80f36026ae83c6ddd0f1d05d4e510134ed462851fd5f754c8c3cbb88d"
  end

  resource "josepy" do
    url "https://files.pythonhosted.org/packages/7f/ad/6f520aee9cc9618d33430380741e9ef859b2c560b1e7915e755c084f6bc0/josepy-2.2.0.tar.gz"
    sha256 "74c033151337c854f83efe5305a291686cef723b4b970c43cfe7270cf4a677a9"
  end

  resource "parsedatetime" do
    url "https://files.pythonhosted.org/packages/a8/20/cb587f6672dbe585d101f590c3871d16e7aec5a576a1694997a3777312ac/parsedatetime-2.6.tar.gz"
    sha256 "4cb368fbb18a0b7231f4d76119165451c8d2e35951455dfee97c62a87b04d455"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pygithub" do
    url "https://files.pythonhosted.org/packages/c1/74/e560bdeffea72ecb26cff27f0fad548bbff5ecc51d6a155311ea7f9e4c4c/pygithub-2.8.1.tar.gz"
    sha256 "341b7c78521cb07324ff670afd1baa2bf5c286f8d9fd302c1798ba594a5400c9"
  end

  resource "pyhcl" do
    url "https://files.pythonhosted.org/packages/20/b9/ff5019eef43b613f49a4695253d8814f8a7012745ae570158e5b64967200/pyhcl-0.4.5.tar.gz"
    sha256 "c47293a51ccdd25e18bb5c8c0ab0ffe355b37c87f8d6f9d3280dc41efd4740bc"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/5c/5a/b46fa56bf322901eee5b0454a34343cdbdae202cd421775a8ee4e42fd519/pyjwt-2.11.0.tar.gz"
    sha256 "35f95c1f0fbe5d5ba6e43f00271c275f7a1a4db1dab27bf708073b75318ea623"
  end

  resource "pymysql" do
    url "https://files.pythonhosted.org/packages/f5/ae/1fe3fcd9f959efa0ebe200b8de88b5a5ce3e767e38c7ac32fb179f16a388/pymysql-1.1.2.tar.gz"
    sha256 "4961d3e165614ae65014e361811a724e2044ad3ea3739de9903ae7c21f539f03"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/d9/9a/4019b524b03a13438637b11538c82781a5eda427394380381af8f04f467a/pynacl-1.6.2.tar.gz"
    sha256 "018494d6d696ae03c7e656e5e74cdfd8ea1326962cc401bcf018f1ed8436811c"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/80/be/97b83a464498a79103036bc74d1038df4a7ef0e402cfaf4d5e113fb14759/pyopenssl-25.3.0.tar.gz"
    sha256 "c981cb0a3fd84e8602d7afc209522773b94c1c2446a3c710a75b06fe1beae329"
  end

  resource "pyrfc3339" do
    url "https://files.pythonhosted.org/packages/b4/7f/3c194647ecb80ada6937c38a162ab3edba85a8b6a58fa2919405f4de2509/pyrfc3339-2.1.0.tar.gz"
    sha256 "c569a9714faf115cdb20b51e830e798c1f4de8dabb07f6ff25d221b5d09d8d7f"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/05/04/74127fc843314818edfa81b5540e26dd537353b123a4edc563109d8f17dd/s3transfer-0.16.0.tar.gz"
    sha256 "8e990f13268025792229cd52fa10cb7163744bf56e719e0b9cb925ab79abf920"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/1f/ea/49c993d6dfdd7338c9b1000a0f36817ed7ec84577ae2e52f890d1a4ff909/smmap-5.0.3.tar.gz"
    sha256 "4d9debb8b99007ae47165abc08670bd74cb74b5227dda7f643eccc4e9eb5642c"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/46/58/8c37dea7bbf769b20d58e7ace7e5edfe65b849442b00ffcdd56be88697c6/tabulate-0.10.0.tar.gz"
    sha256 "e2cfde8f79420f6deeffdeda9aaec3b6bc5abce947655d17ac662b126e48a60d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/35/a2/8e3becb46433538a38726c948d3399905a4c7cabd0df578ede5dc51f0ec2/wcwidth-0.6.0.tar.gz"
    sha256 "cdc4e4262d6ef9a1a57e018384cbeb1208d8abbc64176027e2c2455c81313159"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test infrahouse-toolkit`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ih-ec2", "--version"
  end
end
