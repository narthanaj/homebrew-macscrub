class Macscrub < Formula
  include Language::Python::Virtualenv

  desc "Modular CLI tool for safely cleaning up macOS system files"
  homepage "https://github.com/narthanaj/macscrub"
  url "https://github.com/narthanaj/macscrub/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "129d3129e647ff35c48c4e0928668bf919d0425e397d9dd41475d8cb7dfdc8b4"
  license "MIT"

  depends_on "python@3.12"
  depends_on :macos

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      MacScrub requires sudo privileges for most operations:
        sudo macscrub --analyze
        sudo macscrub --clean --dry-run
    EOS
  end

  test do
    output = shell_output("#{bin}/macscrub --version")
    assert_match "MacScrub", output
  end
end
