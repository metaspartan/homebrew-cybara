class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2348"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2348/cybara-v1.0.2348-darwin-arm64-cli"; sha256 "c316b305d2dcffdb6fc0f88bb29268f9cd615d2e5ad18f3b5fa06bfe80aea559" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2348/cybara-v1.0.2348-darwin-x64-cli"; sha256 "f319dfd778292ed1540f4210c68291a78ab976d2def69e0328a9a75b089ed01c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2348/cybara-v1.0.2348-linux-arm64-cli"; sha256 "be396b97d15b1030487ce23d3478e9845fe4e6b5aaf4e50f55db21b087f58dcd" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2348/cybara-v1.0.2348-linux-x64-cli"; sha256 "f28629c1d57b024f63acfd444dd7c39b2dc312d1c86ac0e9ecfb82b17bc6f205" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
