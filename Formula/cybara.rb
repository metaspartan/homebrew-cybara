class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1434"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1434/cybara-v1.0.1434-darwin-arm64-cli"; sha256 "64fc2855fd196d9c1841c7ab7b56f46b89d68940db940d2f8582076d72fddd39" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1434/cybara-v1.0.1434-darwin-x64-cli"; sha256 "9a201781a9e2881bfb6c267b76f6c76599927f9b4937fb2519d17d1e4d09a08d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1434/cybara-v1.0.1434-linux-arm64-cli"; sha256 "ec32af6996c9edebeefb6faa36ced425c13a1293aec5e282da2a0aab8722542f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1434/cybara-v1.0.1434-linux-x64-cli"; sha256 "c704afcd038858fafb420684f3631ae9cf3d81f331f9b7a41cff6027166d6674" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
