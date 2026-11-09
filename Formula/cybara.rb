class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2577"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2577/cybara-v1.0.2577-darwin-arm64-cli"; sha256 "2ffd3ac099301265c840091e2935e48304c5aa07e7cb04c651b1bd5604e8e23e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2577/cybara-v1.0.2577-darwin-x64-cli"; sha256 "123f8743e22cfeef6452e416041a4fee77fb2e2971094ad3794a9897da2b254c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2577/cybara-v1.0.2577-linux-arm64-cli"; sha256 "4b4dd24adf40026acffb72ae346a47598c21db1234ef4af8b3e03990f8f97f6a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2577/cybara-v1.0.2577-linux-x64-cli"; sha256 "5b7562331aa45ae6d4e0c1f822a6dd0f2eacf5d7b1226523cf712c5aa1ac7658" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
