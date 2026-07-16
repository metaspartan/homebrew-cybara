class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1691"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1691/cybara-v1.0.1691-darwin-arm64-cli"; sha256 "90bfc6ae27bac077ddf702e0c0d59f1568d3a4d9314953b06486c191b4e23ad3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1691/cybara-v1.0.1691-darwin-x64-cli"; sha256 "e5d96d019eca1b8d0554dcf78f6171ceddccd047a7e82db988f2a141a342b08c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1691/cybara-v1.0.1691-linux-arm64-cli"; sha256 "e2dbdd355b0550da7b42ae6e1928e661aba097767af9c51a17a409f66be22919" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1691/cybara-v1.0.1691-linux-x64-cli"; sha256 "c7c226f8d391fe4ad262423835b0647152a852e249e3b7861a7f69ee11aa9fde" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
