class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1865"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1865/cybara-v1.0.1865-darwin-arm64-cli"; sha256 "79a907d46c44898ab46df096fdbe05e03aa0c576b24310cf47cc54ac9f4758b1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1865/cybara-v1.0.1865-darwin-x64-cli"; sha256 "c5c3b3d70b3bb142b5667a0396f2f9808e935a8e7363bd54b401bf4aa1ad2984" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1865/cybara-v1.0.1865-linux-arm64-cli"; sha256 "d4684a99038e94db58d1a35bc58e575b2caa694eac4b5a5410e673e6cf273172" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1865/cybara-v1.0.1865-linux-x64-cli"; sha256 "82deef0f515c238b2e661916ac4964c137cbb2b4903de9ac09d3a9f06a2b3b81" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
