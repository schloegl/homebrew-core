class Tern < Formula
  include Language::Python::Virtualenv

  desc "Software Bill of Materials (SBOM) tool"
  homepage "https://github.com/tern-tools/tern"
  url "https://files.pythonhosted.org/packages/f8/4b/123b2ca469126b45e61853acf028fe1d466f4fe1d5e7afd1d4972c151b4d/tern-2.12.1.tar.gz"
  sha256 "c8c22f162962107adb64caaf5f764044e59caa28b9566079e101181c6449a1c0"
  license "BSD-2-Clause"
  head "https://github.com/tern-tools/tern.git", branch: "main"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "5a3b6f8860e6e74ddb12effdf187dea219be9af73a183960ffa5c5d5d6437654"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "3fea37300435ec7ef306b7fc3eaaa3472e9ad13782a0f69dfd9846e4432ffa2f"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "e198f016fba1e1afecf19615915dd07990e58881e93f7e2fd9b8751a98da12cc"
    sha256 cellar: :any_skip_relocation, ventura:        "2a2d92aaba6403a5cb1cd55125ec266194f8d7e05dac72265eb565e73de1a96a"
    sha256 cellar: :any_skip_relocation, monterey:       "c1bf6b4cf66e484818ce31eee7c918e4f1c0e62ef7e5d3a6dea6619f7f68b5d1"
    sha256 cellar: :any_skip_relocation, big_sur:        "8276f4efbeb05388ed0330604f3215f4dcf4940da2f2743f587b17966259d3be"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "c2bfcb0c0607a308bc4cf95b8bbc18ee5beee08836de1e1cfa344841484ba062"
  end

  depends_on "python@3.11"
  depends_on "pyyaml"

  on_linux do
    depends_on "attr" # for `getfattr`
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/97/90/81f95d5f705be17872843536b1868f351805acf6971251ff07c1b8334dbb/attrs-23.1.0.tar.gz"
    sha256 "6279836d581513a26f1bf235f9acd333bc9115683f14f7e8fae46c98fc50e015"
  end

  resource "boolean-py" do
    url "https://files.pythonhosted.org/packages/a2/d9/b6e56a303d221fc0bdff2c775e4eef7fedd58194aa5a96fa89fb71634cc9/boolean.py-4.0.tar.gz"
    sha256 "17b9a181630e43dde1851d42bef546d616d5d9b4480357514597e78b203d06e4"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/93/71/752f7a4dd4c20d6b12341ed1732368546bc0ca9866139fe812f6009d9ac7/certifi-2023.5.7.tar.gz"
    sha256 "0f0d56dc5a6ad56fd4ba36484d6cc34451e1c6548c61daad8c320169f91eddc7"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/41/32/cdc91dcf83849c7385bf8e2a5693d87376536ed000807fa07f5eab33430d/chardet-5.1.0.tar.gz"
    sha256 "0d62712b956bc154f85fb0a266e2a3c5913c2967e00348701b32411d6def31e5"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
    sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
  end

  resource "debian-inspector" do
    url "https://files.pythonhosted.org/packages/76/27/2bdbfe084be16806c35fcc91bac3236706d1d62751c39a293b2cab77ebcc/debian_inspector-31.0.0.tar.gz"
    sha256 "46094f953464b269bb09855eadeee3c92cb6b487a0bfa26eba537b52cc3d6b47"
  end

  resource "docker" do
    url "https://files.pythonhosted.org/packages/f0/73/f7c9a14e88e769f38cb7fb45aa88dfd795faa8e18aea11bababf6e068d5e/docker-6.1.3.tar.gz"
    sha256 "aa6d17830045ba5ef0168d5eaa34d37beeb113948c413affe1d5991fc11f9a20"
  end

  resource "dockerfile-parse" do
    url "https://files.pythonhosted.org/packages/0f/c4/8c4fc1da93a67878b15eaac0d47f467c87be7a12406544b1b33e261a0454/dockerfile-parse-2.0.0.tar.gz"
    sha256 "21fe7d510642f2b61a999d45c3d9745f950e11fe6ba2497555b8f63782b78e45"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/4b/47/dc98f3d5d48aa815770e31490893b92c5f1cd6c6cf28dd3a8ae0efffac14/gitdb-4.0.10.tar.gz"
    sha256 "6eb990b69df4e15bad899ea868dc46572c3f75339735663b81de79b06f17eb9a"
  end

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/87/56/6dcdfde2f3a747988d1693100224fb88fc1d3bbcb3f18377b2a3ef53a70a/GitPython-3.1.32.tar.gz"
    sha256 "8d9b8cb1e80b9735e8717c9362079d3ce4c6e5ddeebedd0361b228c3a67a62f6"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "license-expression" do
    url "https://files.pythonhosted.org/packages/90/93/0fc8c72a5c9b65c2fd56154ef9e08c0c7a7fd0596ae69c65ce714ea5cd84/license-expression-30.1.1.tar.gz"
    sha256 "42375df653ad85e6f5b4b0385138b2dbea1f5d66360783d8625c3e4f97f11f0c"
  end

  resource "packageurl-python" do
    url "https://files.pythonhosted.org/packages/91/c7/47a411700a121acc05fe78642b019afe320592078e58c182537c7c65006f/packageurl-python-0.11.1.tar.gz"
    sha256 "bbcc53d2cb5920c815c1626c75992f319bfc450b73893fa7bd8aac5869aa49fe"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b9/6c/7c6658d258d7971c5eb0d9b69fa9265879ec9a9158031206d47800ae2213/packaging-23.1.tar.gz"
    sha256 "a392980d2b6cffa644431898be54b0045151319d1e7ec34f0cfed48767dd334f"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/02/d8/acee75603f31e27c51134a858e0dea28d321770c5eedb9d1d673eb7d3817/pbr-5.11.1.tar.gz"
    sha256 "aefc51675b0b533d56bb5fd1c8c6c0522fe31896679882e1c4c63d5e4a0fccb3"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/18/fa/82e719efc465238383f099c08b5284b974f5002dbe12050bcbbc912366eb/prettytable-3.8.0.tar.gz"
    sha256 "031eae6a9102017e8c7c7906460d150b7ed78b20fd1d8c8be4edaf88556c07ce"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/18/df/401fd39ffd50062ff1e0344f95f8e2c141de4fd1eca1677d2f29609e5389/regex-2023.6.3.tar.gz"
    sha256 "72d1a25bf36d2050ceb35b517afe13864865268dfb45910e2e17a84be6cbfeb0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/21/2d/39c6c57032f786f1965022563eec60623bb3e1409ade6ad834ff703724f3/smmap-5.0.0.tar.gz"
    sha256 "c840e62059cd3be204b0c9c9f74be2c09d5648eddd4580d9314c3ecde0b30936"
  end

  resource "stevedore" do
    url "https://files.pythonhosted.org/packages/ac/d6/77387d3fc81f07bc8877e6f29507bd7943569093583b0a07b28cfa286780/stevedore-5.1.0.tar.gz"
    sha256 "a54534acf9b89bc7ed264807013b505bf07f74dbe4bcfa37d32bd063870b087c"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/d6/af/3b4cfedd46b3addab52e84a71ab26518272c23c77116de3c61ead54af903/urllib3-2.0.3.tar.gz"
    sha256 "bee28b5e56addb8226c96f7f13ac28cb4c301dd5ea8a6ca179c0b9835e032825"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/b1/34/3a5cae1e07d9566ad073fa6d169bf22c03a3ba7b31b3c3422ec88d039108/websocket-client-1.6.1.tar.gz"
    sha256 "c951af98631d24f8df89ab1019fc365f2227c0892f12fd150e935607c79dd0dd"
  end

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      tern requires root privileges so you will need to run `sudo tern`.
      You should be certain that you trust any software you grant root privileges.
    EOS
  end

  test do
    output = if OS.mac?
      shell_output(bin/"tern report --image alpine:3.13.5 2>&1", 1)
    else
      shell_output(bin/"tern report --image alpine:3.13.5 2>&1")
    end
    assert_match "rootfs - Running command", output
    assert_predicate testpath/"tern.log", :exist?

    assert_match version.to_s, shell_output(bin/"tern --version")
  end
end
