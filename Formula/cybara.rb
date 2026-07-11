class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1242"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1242/cybara-v1.0.1242-darwin-arm64-cli"; sha256 "d9fa5e36e169366a84684c7d02b5df7070fae11a685fa99cda76e4eeb99de0f9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1242/cybara-v1.0.1242-darwin-x64-cli"; sha256 "ad100cd25a35590d9dd034501938048e8d0fc508d7dedff2c50ec4b997362e2d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1242/cybara-v1.0.1242-linux-arm64-cli"; sha256 "059be2a33fb3063052f3b1bae540032965554d319e2f5f38699819e40fe59105" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1242/cybara-v1.0.1242-linux-x64-cli"; sha256 "1275c82d45902c3359dcc1ab9a4c6a3d12db4a4b532ee6fc40e050d5bb2d9883" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
