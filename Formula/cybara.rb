class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1214"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1214/cybara-v1.0.1214-darwin-arm64-cli"; sha256 "cb8bb4f7435db7ae5bf61c00765e2898f09d9961754ef71c8de8874b8792bc07" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1214/cybara-v1.0.1214-darwin-x64-cli"; sha256 "4c9ea9445097f4cfb2d719e76c9dafa69eb5b7632b3ea038d5a84325ebef0a2d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1214/cybara-v1.0.1214-linux-arm64-cli"; sha256 "2860622e31c1760c33c3c6a7173dc926f312c7fa3064c9e12f3e73d8f08ccc66" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1214/cybara-v1.0.1214-linux-x64-cli"; sha256 "9e24745d536a25ccb39acc955377b040346d1f4391d7202510403869a1dc4fde" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
