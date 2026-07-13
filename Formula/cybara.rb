class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1443"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1443/cybara-v1.0.1443-darwin-arm64-cli"; sha256 "f500f7550cdd0753394cd628bac0056fc377d2a9fbc36b09b90d4c8e0c18aade" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1443/cybara-v1.0.1443-darwin-x64-cli"; sha256 "952836cce5b52c000ee8529701a8ebd43671bd6cf5e54cbd6d8783861ef02734" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1443/cybara-v1.0.1443-linux-arm64-cli"; sha256 "215da55ae0d5511001aaad74a359343faf0143703caf49e3bc796341656fd52e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1443/cybara-v1.0.1443-linux-x64-cli"; sha256 "b5124de8258283e2fca87ea114618ae1b82535a14639dc4c3673805f62bac879" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
