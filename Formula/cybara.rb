class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2386"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2386/cybara-v1.0.2386-darwin-arm64-cli"; sha256 "9072ce5b9a9fad99a53899aae3980d92284cd71472923401b2d2d8224ad7b26a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2386/cybara-v1.0.2386-darwin-x64-cli"; sha256 "710fb113e687fde4c3c89f4bcbcc41ad0a3750dde55af7aeba7d8514117cff82" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2386/cybara-v1.0.2386-linux-arm64-cli"; sha256 "0ba0d8cfe8b6a39914226478f464212a14735a5f316d7a4299dc81126f59570e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2386/cybara-v1.0.2386-linux-x64-cli"; sha256 "31dcc1db551287dc1e371b53f10ff26b0676d5d29526477b20890f2dd47f6fc2" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
