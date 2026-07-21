class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1833"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1833/cybara-v1.0.1833-darwin-arm64-cli"; sha256 "24d93c444ae5a48bb8607548086f4b136103abd3b4b9b92c5028f89b307d65f3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1833/cybara-v1.0.1833-darwin-x64-cli"; sha256 "2e356293d5532f6c32c8f4f50a7a80eaa6826eb5cb57561efc4ab35bcdc0871f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1833/cybara-v1.0.1833-linux-arm64-cli"; sha256 "650671710833d12e38ec58782a5019e295a71031ba9fa0ddbbf5cfff6235306d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1833/cybara-v1.0.1833-linux-x64-cli"; sha256 "b9b7e03547987afe71831538689695823cf8fd24a401c3db66e7d2a5331311b9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
