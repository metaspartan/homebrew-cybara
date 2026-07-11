class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1273"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1273/cybara-v1.0.1273-darwin-arm64-cli"; sha256 "6cd9d07b41e089a97c92448a0a352c0bf9ef71023df97feab3bb212f72e41c26" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1273/cybara-v1.0.1273-darwin-x64-cli"; sha256 "e97d2064b955e9489be020e0fe63c99ee18d21f4ce78a12027a8ca423d8b7659" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1273/cybara-v1.0.1273-linux-arm64-cli"; sha256 "2ef464976b146bc736fecad0bf471d9da9adcc561660a044df35f951fa326a88" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1273/cybara-v1.0.1273-linux-x64-cli"; sha256 "d7cf0b21ddca6c27b2bea2b981191024528aea5f1770e2420152f0daecfb1114" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
