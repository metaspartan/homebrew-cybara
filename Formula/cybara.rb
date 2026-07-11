class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1323"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1323/cybara-v1.0.1323-darwin-arm64-cli"; sha256 "418943133af78179121f9b9248e73021e4bb64486f9e96321248a5239fa7693b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1323/cybara-v1.0.1323-darwin-x64-cli"; sha256 "35a684c50dea1387de9f548399921680e8943cd2431ce4f4978ef4b7502fd1ba" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1323/cybara-v1.0.1323-linux-arm64-cli"; sha256 "ed840bfffc796e0e1870af3128156ccd9d62a7ed4931671923a25719d17180e2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1323/cybara-v1.0.1323-linux-x64-cli"; sha256 "a39a3f810a18c1380acc27387d493855011f59cbcd3d991853fe82d2b5c732c5" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
