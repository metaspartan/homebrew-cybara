class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1666"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1666/cybara-v1.0.1666-darwin-arm64-cli"; sha256 "9349f28a4ad72d61bf57ae0ca575b6b964f0936292c3055ac5e86409f53aee9b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1666/cybara-v1.0.1666-darwin-x64-cli"; sha256 "1987edbb69335c24267341d74dbe3e54d2e7cc0899989b0114133ff352e9c3ac" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1666/cybara-v1.0.1666-linux-arm64-cli"; sha256 "627d15ec83b36c8b426f185d0c0daac99b26d416e343b23a97e1498760babf38" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1666/cybara-v1.0.1666-linux-x64-cli"; sha256 "c55bf2d7949506f19c090f90dcbd20d116b20dbf24bdad7cbade16dfbbe86ea7" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
