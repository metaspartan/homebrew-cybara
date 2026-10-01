class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2472"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2472/cybara-v1.0.2472-darwin-arm64-cli"; sha256 "f3bafb8226842f60a0cccc9b7cb3fb000aa2c362b0ef9fc1774e3161718069a2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2472/cybara-v1.0.2472-darwin-x64-cli"; sha256 "193cff6104561a7702f10122cdaeedd93dcca84f0d7ff6a7e3f5e27bfc75dfc8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2472/cybara-v1.0.2472-linux-arm64-cli"; sha256 "2f3d74166f77807b2bd2a6745e406c602db4947bf81c26bdd712a994a52ede60" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2472/cybara-v1.0.2472-linux-x64-cli"; sha256 "628d7fa7cc593417a42060abf69f62bd185f138d6b66a57b19b97d5f3520267e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
