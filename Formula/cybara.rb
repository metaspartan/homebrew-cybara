class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1366"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1366/cybara-v1.0.1366-darwin-arm64-cli"; sha256 "c39c10e019ac2a5547c76be7c0f36f6e49eed6b3a789947aeca4f9eee6e2e85c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1366/cybara-v1.0.1366-darwin-x64-cli"; sha256 "03b6edb194b331663270f2f1a84ee4cb8e360381786636264eaf1c4b2b05cb4d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1366/cybara-v1.0.1366-linux-arm64-cli"; sha256 "12a4dd2ecb405afa6c46899424ce2cce6b254228e2c718be3156ab2318b1392c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1366/cybara-v1.0.1366-linux-x64-cli"; sha256 "7fa1cb368a300d2794196cdbea61575f226078249c89a13efa5ef4036a89119c" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
