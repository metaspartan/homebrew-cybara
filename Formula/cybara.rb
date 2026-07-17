class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1772"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1772/cybara-v1.0.1772-darwin-arm64-cli"; sha256 "99cea311182908eadcf6e5dab3298104c4560a6bc40c19f976494ea8e48d4902" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1772/cybara-v1.0.1772-darwin-x64-cli"; sha256 "eac5e51f968fb61d9d86e9cc5e2f292fb763f69101b163cfdeb6bcc501de1123" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1772/cybara-v1.0.1772-linux-arm64-cli"; sha256 "d73c9acb14585ba932f3686f41223f181fc011ec46e42f5f55af0eb16ab41fc6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1772/cybara-v1.0.1772-linux-x64-cli"; sha256 "4e0e1a84ea9587cc232a0a10caea9dde40d32e6df86d0b63dc823cd53d20936d" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
