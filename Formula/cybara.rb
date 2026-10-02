class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2484"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2484/cybara-v1.0.2484-darwin-arm64-cli"; sha256 "5ab43114c531395b2080ff25c3e07db84e9ccd3485c19a76c705004a3f9879d2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2484/cybara-v1.0.2484-darwin-x64-cli"; sha256 "38a240db375e6a8277d5dbd8ea2b5e42f49e9d15e9f1203c823c8fcf7ff030e5" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2484/cybara-v1.0.2484-linux-arm64-cli"; sha256 "c7c090e2912828d9b49f50459e9942fd957aee64802b6d8c85754848c5cab5bb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2484/cybara-v1.0.2484-linux-x64-cli"; sha256 "a3cefc371ebfe4f5ba28098efb71bd85e1754512cef893d6ad4dec41e978b3ce" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
