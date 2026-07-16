class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1733"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1733/cybara-v1.0.1733-darwin-arm64-cli"; sha256 "95b0f601ec8a38a2ce1d55c1e3badc52d9b3f6d8588bcc45109b697944288b40" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1733/cybara-v1.0.1733-darwin-x64-cli"; sha256 "c8073d5c62d34619e00b3341bf75eb4e1e71eafd626a0b244bec7d74a4ca631a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1733/cybara-v1.0.1733-linux-arm64-cli"; sha256 "ef923d289171dd41a8dd9bb4068fa2b208a03e5da1b4501f83fa84e664bb743e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1733/cybara-v1.0.1733-linux-x64-cli"; sha256 "48e0cb038133ad26a26fffe12cd47058dbe686d4df22e3f99887e72caa23c8aa" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
