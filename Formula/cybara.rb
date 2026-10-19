class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2524"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2524/cybara-v1.0.2524-darwin-arm64-cli"; sha256 "c811c17977ae529166ff1dae5b307d24b29742bd6db0d7655883d41039465c76" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2524/cybara-v1.0.2524-darwin-x64-cli"; sha256 "39c0b273fff03dd6459339e3b5e72de69f4211da1e9e6c8f441602a866aa284d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2524/cybara-v1.0.2524-linux-arm64-cli"; sha256 "f7915e46607b19f7882b6831f7c2541d32906d29d89eb3d1c4f055cd4adf3f5e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2524/cybara-v1.0.2524-linux-x64-cli"; sha256 "9e09ca6bc40d25a12ebcd91c2a2536a4dc02b04c662e1a67fd93c57304fb0f36" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
