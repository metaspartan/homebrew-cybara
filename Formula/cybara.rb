class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1573"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1573/cybara-v1.0.1573-darwin-arm64-cli"; sha256 "2089f7de02c8346676fd459a6325a65636352080af760908fcad1b8334f16115" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1573/cybara-v1.0.1573-darwin-x64-cli"; sha256 "e77bac63ee3db0b70f2da922e35361cde31a8eabdd047a5547db869af5e936e6" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1573/cybara-v1.0.1573-linux-arm64-cli"; sha256 "0abc10644a85a03a8fda239b098ce1311bdd1ca5cb49c4d77dbb83e148ce20dc" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1573/cybara-v1.0.1573-linux-x64-cli"; sha256 "b5763724012fc919baf846ee3a1b0618cb08b455899cde74397267e463739a69" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
