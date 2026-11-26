class InfrahouseToolkit < Formula
  desc "Command-line tools for InfraHouse infrastructure"
  homepage "https://github.com/infrahouse/infrahouse-toolkit"
  url "https://github.com/infrahouse/infrahouse-toolkit/releases/download/v2.68.1/infrahouse-toolkit-2.68.1-macos-arm64.tar.gz"
  sha256 "dba5904b612e420cb6472fd8f10bb4c3c43f0a7581946d9cbd2bc2949621e0e9"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    libexec.install Dir["*"]
    Dir[libexec/"bin/ih-*"].each { |script| bin.install_symlink script }
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ih-ec2 --version")
    system libexec/"bin/python3", "-I", "-c",
           "import nacl.bindings, cryptography.hazmat.bindings._rust, infrahouse_toolkit, " \
           "infrahouse_toolkit.cli.ih_registry.cmd_upload"
  end
end
