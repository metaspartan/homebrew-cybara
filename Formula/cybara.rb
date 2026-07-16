class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1649"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1649/cybara-v1.0.1649-darwin-arm64-cli"; sha256 "d91be69685e090de515472d8cec58980df17cca91f2bf9c42e8ad0b3f75f0ae3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1649/cybara-v1.0.1649-darwin-x64-cli"; sha256 "c4061ca4bb1a718e781c0ab8da7cdcb2a3c56780a2e4a02939e0d2ab4d773631" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1649/cybara-v1.0.1649-linux-arm64-cli"; sha256 "65f675c11447b8363a0bf584a0af51559524ebf759876ecf225b1655995ae121" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1649/cybara-v1.0.1649-linux-x64-cli"; sha256 "cc928a12dd11f6581196bb7eddfbbac79901107b1d5060d4e50a788de0a677c4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
