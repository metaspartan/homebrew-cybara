class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1686"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1686/cybara-v1.0.1686-darwin-arm64-cli"; sha256 "68a67997dc01f848a894f4d0263d44d5cca80bfdaabdb5df4693e31afab9dd75" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1686/cybara-v1.0.1686-darwin-x64-cli"; sha256 "e6a622f677ef575941b8a14975b7019111944381c080711ef8bf99dd7f8f8b02" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1686/cybara-v1.0.1686-linux-arm64-cli"; sha256 "642fdb9e5c484aa46bc28b5620fc039718b7722b6276a685c637cfb4cf691b3e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1686/cybara-v1.0.1686-linux-x64-cli"; sha256 "6eb1533defac50fd81e112fc14e838761b9a5210c0ade7f77bdb760d64e2befe" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
