class InfrahouseToolkit < Formula
  include Language::Python::Virtualenv

  desc "Toolkit for various operations on infrastructure components"
  homepage "https://github.com/infrahouse/infrahouse-toolkit"
  url "https://github.com/infrahouse/infrahouse-toolkit/archive/refs/tags/2.55.0.tar.gz"
  sha256 "2ca6a842519549115c80135165f5a81ba1beef9dcf80ff22168e2bfee2966c5f"
  license "Apache-2.0"

  depends_on "python@3.12"
  depends_on "rust"

  resource "acme" do
    url "https://files.pythonhosted.org/packages/48/df/d006c4920fd04b843c21698bd038968cb9caa3315608f55abde0f8e4ad6b/acme-4.2.0.tar.gz"
    sha256 "0df68c0e1acb3824a2100013f8cd51bda2e1a56aa23447449d14c942959f0c41"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/8e/eb/bd2406de26d76f34661aa42ee03109b3914ac7a2cc17d8f9abb958c80e6e/boto3-1.40.6.tar.gz"
    sha256 "3f2375b7576de603085d7b7491cf2c4ab5c57d12965a5ce295821cdd4d10e950"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/6e/a6/130e049f6b38c02628b765b24b1a3d2016cffd8e363edb7660bbb9f4681d/botocore-1.40.6.tar.gz"
    sha256 "e132eac967a7526596e31ca571d7f1ef9676c6a9c4f1322446768994ccab64aa"
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
    url "https://files.pythonhosted.org/packages/dc/67/960ebe6bf230a96cda2e0abcf73af550ec4f090005363542f0765df162e0/certifi-2025.8.3.tar.gz"
    sha256 "e564105f78ded564e3ae7c923924435e1daa7463faeab5bb932bc53ffae63407"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/83/2d/5fd176ceb9b2fc619e63405525573493ca23441330fcdaee6bef9460e924/charset_normalizer-3.4.3.tar.gz"
    sha256 "6fce4b8500244f6fcb71465d4a4930d132ba9ab8e71a7859e6a5d59851068d14"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/60/6c/8ca2efa64cf75a977a0d7fac081354553ebe483345c734fb6b6515d96bbc/click-8.2.1.tar.gz"
    sha256 "27c491cc05d968d271d5a1db13e3b5a184636d9d930f148c50b038f0d0646202"
  end

  resource "configargparse" do
    url "https://files.pythonhosted.org/packages/85/4d/6c9ef746dfcc2a32e26f3860bb4a011c008c392b83eabdfb598d1a8bbe5d/configargparse-1.7.1.tar.gz"
    sha256 "79c2ddae836a1e5914b71d58e4b9adbd9f7779d4e6351a637b7d2d9b6c46d3d9"
  end

  resource "configobj" do
    url "https://files.pythonhosted.org/packages/f5/c4/c7f9e41bc2e5f8eeae4a08a01c91b2aea3dfab40a3e14b25e87e7db8d501/configobj-5.0.9.tar.gz"
    sha256 "03c881bbf23aa07bccf1b837005975993c4ab4427ba57f959afdd9d1a2386848"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/d6/0d/d13399c94234ee8f3df384819dc67e0c5ce215fb751d567a55a1f4b028c7/cryptography-45.0.6.tar.gz"
    sha256 "5c966c732cf6e4a276ce83b6e4c729edda2df6929083a952cc7da973c539c719"
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
    url "https://files.pythonhosted.org/packages/b1/7b/bd3b4055ecf3f4cc4f72a8431df7442b423618680823940a979f6c40da77/ec2_metadata-2.15.0.tar.gz"
    sha256 "b066b268091ca40369fdd644b90a34ecbfd78225bce6f0e269f0bf9ce3ab1b75"
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
    url "https://files.pythonhosted.org/packages/9a/c8/dd58967d119baab745caec2f9d853297cec1989ec1d63f677d3880632b88/gitpython-3.1.45.tar.gz"
    sha256 "85b0ee964ceddf211c41b9f27a49086010a190fd8132a24e21f362a4b36a791c"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "infrahouse-core" do
    url "https://files.pythonhosted.org/packages/bb/cd/d6224bea9e7fff931fe8e0bc1eb5bf240af903426621b89b2b26c3b152cb/infrahouse_core-0.17.1.tar.gz"
    sha256 "a2ca87b49d3012a6127c1003cbb04bcd4651bb6df1a3cde70fb746afc9ccae26"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "josepy" do
    url "https://files.pythonhosted.org/packages/9d/19/4ebe24c42c341c5868dff072b78d503fc1b0725d88ea619d2db68f5624a9/josepy-2.1.0.tar.gz"
    sha256 "9beafbaa107ec7128e6c21d86b2bc2aea2f590158e50aca972dca3753046091f"
  end

  resource "parsedatetime" do
    url "https://files.pythonhosted.org/packages/a8/20/cb587f6672dbe585d101f590c3871d16e7aec5a576a1694997a3777312ac/parsedatetime-2.6.tar.gz"
    sha256 "4cb368fbb18a0b7231f4d76119165451c8d2e35951455dfee97c62a87b04d455"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "pygithub" do
    url "https://files.pythonhosted.org/packages/6a/a7/403e04aa96e2d94e1518d518d69718c2ba978c8d3ffa4ab3b101b94dbafa/pygithub-2.7.0.tar.gz"
    sha256 "7cd6eafabb09b5369afba3586d86b1f1ad6f1326d2ff01bc47bb26615dce4cbb"
  end

  resource "pyhcl" do
    url "https://files.pythonhosted.org/packages/20/b9/ff5019eef43b613f49a4695253d8814f8a7012745ae570158e5b64967200/pyhcl-0.4.5.tar.gz"
    sha256 "c47293a51ccdd25e18bb5c8c0ab0ffe355b37c87f8d6f9d3280dc41efd4740bc"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e7/46/bd74733ff231675599650d3e47f361794b22ef3e3770998dda30d3b63726/pyjwt-2.10.1.tar.gz"
    sha256 "3cc5772eb20009233caf06e9d8a0577824723b44e6648ee0a2aedb6cf9381953"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
    sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/04/8c/cd89ad05804f8e3c17dea8f178c3f40eeab5694c30e0c9f5bcd49f576fc3/pyopenssl-25.1.0.tar.gz"
    sha256 "8d031884482e0c67ee92bf9a4d8cceb08d92aba7136432ffb0703c5280fc205b"
  end

  resource "pyrfc3339" do
    url "https://files.pythonhosted.org/packages/f0/d2/6587e8ec3951cbd97c56333d11e0f8a3a4cb64c0d6ed101882b7b31c431f/pyrfc3339-2.0.1.tar.gz"
    sha256 "e47843379ea35c1296c3b6c67a948a1a490ae0584edfcbdea0eaffb5dd29960b"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/e1/0a/929373653770d8a0d7ea76c37de6e41f11eb07559b103b1c02cafb3f7cf8/requests-2.32.4.tar.gz"
    sha256 "27d0316682c8a29834d3264820024b62a36942083d52caf2f14c0591336d3422"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/6d/05/d52bf1e65044b4e5e27d4e63e8d1579dbdec54fce685908ae09bc3720030/s3transfer-0.13.1.tar.gz"
    sha256 "c3fdba22ba1bd367922f27ec8032d6a1cf5f10c934fb5d68cf60fd5a23d936cf"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/44/cd/a040c4b3119bbe532e5b0732286f805445375489fceaec1f48306068ee3b/smmap-5.0.2.tar.gz"
    sha256 "26ea65a03958fa0c8a1c7e8c7a58fdc77221b8910f6be2131affade476898ad5"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/98/5a/da40306b885cc8c09109dc2e1abd358d5684b1425678151cdaed4731c822/typing_extensions-4.14.1.tar.gz"
    sha256 "38b39f4aeeab64884ce9f74c94263ef78f3c22467c8724005483154c26648d36"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz"
    sha256 "3fc47733c7e419d4bc3f6b3dc2b4f890bb743906a30d56ba4a5bfa4bbff92760"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
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
