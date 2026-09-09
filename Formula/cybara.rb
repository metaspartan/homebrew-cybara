class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2328"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2328/cybara-v1.0.2328-darwin-arm64-cli"; sha256 "724701fa372400cbfc01315a06629828e2eb7a6e872ee5fdaa113d115a8c797a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2328/cybara-v1.0.2328-darwin-x64-cli"; sha256 "796b84e59c95c65d1c304051780c6932f425b172291c1e765636ce69add50bca" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2328/cybara-v1.0.2328-linux-arm64-cli"; sha256 "c483a70ec0d5f16264ffaacf1393ffa6e83826baeb7db17056bf243fa30c7e11" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2328/cybara-v1.0.2328-linux-x64-cli"; sha256 "74bcd1af73284166ebe6f187586abc4f7f04cb03cd89f1f20cc0f7dc802a9d13" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
