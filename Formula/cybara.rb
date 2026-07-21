class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1824"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1824/cybara-v1.0.1824-darwin-arm64-cli"; sha256 "1e4ccb9c76e0fa92e29c879bf7a46423ed4b34eb0993c028d6f7b758bdd2c7e6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1824/cybara-v1.0.1824-darwin-x64-cli"; sha256 "571f5aad0b2e6a5179ab481e1c21c035b2455b35f91df64a899265ea9da02914" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1824/cybara-v1.0.1824-linux-arm64-cli"; sha256 "9ab44271cb75839b94237b423437e7cd613ce994ef272e2a8e7c54cb29759af8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1824/cybara-v1.0.1824-linux-x64-cli"; sha256 "d9f34c61cd9584dfddbaae3d2862593fcb2bc6517c115748ee65c33c42813d7b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
