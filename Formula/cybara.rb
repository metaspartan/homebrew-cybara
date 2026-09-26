class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2394"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2394/cybara-v1.0.2394-darwin-arm64-cli"; sha256 "0caf3c62c7e1ef79237008a2dff3aa5a66dc11fbd6b687b8d3cddff158f6126f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2394/cybara-v1.0.2394-darwin-x64-cli"; sha256 "415696ec77dc2b0e0075631b66bd4c23d70d1441c820e5357a9ce417d5ffa9ab" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2394/cybara-v1.0.2394-linux-arm64-cli"; sha256 "f3af8ff71364b129803cac036715740e421f247e01380b85979fa62a7fa3ed73" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2394/cybara-v1.0.2394-linux-x64-cli"; sha256 "f8e1980c416fe18fd0de6b0a4085503f1bf7ee2fdb44179c31fcfa89ba17ea9f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
