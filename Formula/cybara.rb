class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1791"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1791/cybara-v1.0.1791-darwin-arm64-cli"; sha256 "74606350bc8e05c229edcf4d64eefa3e2af1ab9b3fff4e98deed3f087ad080f3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1791/cybara-v1.0.1791-darwin-x64-cli"; sha256 "6819f45f3979803a75cfa548459708f5bcd34b15710e7b8ab80895d6c96188b9" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1791/cybara-v1.0.1791-linux-arm64-cli"; sha256 "c9e096cbb27ae1ef369a1c226f6e1daaf0fa067fb0ec0111dfbfd4c53457a1ce" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1791/cybara-v1.0.1791-linux-x64-cli"; sha256 "45a58a679e005e5d5ca7c28b54d33c759c1420f0922342a6eb7f6f6287b2d417" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
