class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1226"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1226/cybara-v1.0.1226-darwin-arm64-cli"; sha256 "e6ac15db454ce58434b2669513314537e398e8fbc23f11f3059a9052cf3398a7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1226/cybara-v1.0.1226-darwin-x64-cli"; sha256 "136f6c690e941e672489492eea5999bc4a43b2c08a7d91073772dbc324025eef" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1226/cybara-v1.0.1226-linux-arm64-cli"; sha256 "70696a18ef7101f7a05ab6f0233ac19cd402acc06db42a3809b65edafa5e3d36" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1226/cybara-v1.0.1226-linux-x64-cli"; sha256 "0e0d1c19527314c66c67093d9abf99ca99169a734100d87d1541986c965e1b71" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
