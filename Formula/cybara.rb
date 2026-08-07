class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2083"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2083/cybara-v1.0.2083-darwin-arm64-cli"; sha256 "4c37caf3394b1e89a996926081607040b43613fe3030779215465be9deabb4c9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2083/cybara-v1.0.2083-darwin-x64-cli"; sha256 "b9de77cf9aeee8e2ed1da7d396bc63160acf81628caf68497d0f793562ac0f7b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2083/cybara-v1.0.2083-linux-arm64-cli"; sha256 "9e6b57dab1de910d12dcd8003be5f6d2f02cee9facb2f50154571195d05ddd7d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2083/cybara-v1.0.2083-linux-x64-cli"; sha256 "aaba6b6f9a16524d6b8ee7aa0ace35ad9a45afb2408260508f495cf450ee577e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
