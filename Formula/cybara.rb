class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2230"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2230/cybara-v1.0.2230-darwin-arm64-cli"; sha256 "04053233bc84ff3e67f4f213406895044fc580f9127e6ad8be312ebd1b31bfe7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2230/cybara-v1.0.2230-darwin-x64-cli"; sha256 "aad6e1487d98a5ac3be5d292abd0142d0a619dd7bd57fd784c06454dceca7df8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2230/cybara-v1.0.2230-linux-arm64-cli"; sha256 "ed9f12307343df8a78ff568db4065e61e3e1111999b81fdc6902d098e12d109f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2230/cybara-v1.0.2230-linux-x64-cli"; sha256 "f3852af17ceadda8641a3d4fe53d637920097ebf274b7804bc0235288d9d951e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
