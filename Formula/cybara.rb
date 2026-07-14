class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1518"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1518/cybara-v1.0.1518-darwin-arm64-cli"; sha256 "c0d5a15bf191e021619057399f1e43d80a50e2dbda9d9160f884d68b034940d8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1518/cybara-v1.0.1518-darwin-x64-cli"; sha256 "96ea5c22e420bc06a32d8c096e9a08a36237ea4219f5d44ee989adb4fb576e6f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1518/cybara-v1.0.1518-linux-arm64-cli"; sha256 "f49f8f0310e20559399af09cec7fa6ac2e0835a435e55928b052c25b27e75ae5" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1518/cybara-v1.0.1518-linux-x64-cli"; sha256 "dcb29d9513d2713e69b682629eabc18ad54b90c16d8e3f9c32d2d7406390b027" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
