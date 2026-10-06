class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2497"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2497/cybara-v1.0.2497-darwin-arm64-cli"; sha256 "a5e0f25ef3ac2bf417a5da76dbd609987197bfbd91c3cafaedf3af084be77f42" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2497/cybara-v1.0.2497-darwin-x64-cli"; sha256 "27a921cc25d1715a29f6fceac89414c830cec0dee061a44a2cc41ce29b6f3bdf" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2497/cybara-v1.0.2497-linux-arm64-cli"; sha256 "9359d0306097364435d9ab6477d81c573d5eb1bdc0c66c48efbc358e3fc549c2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2497/cybara-v1.0.2497-linux-x64-cli"; sha256 "adb2e0092c95a22f282a28f70ab9ec4bb8b65de98beee6f42f1d52b9e544e01f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
