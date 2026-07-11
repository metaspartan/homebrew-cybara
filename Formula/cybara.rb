class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1246"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1246/cybara-v1.0.1246-darwin-arm64-cli"; sha256 "afa839d4c1c9d870d6f08a5e76306bef5d4aec558ec245415188c0cbb9e8f5da" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1246/cybara-v1.0.1246-darwin-x64-cli"; sha256 "2f52875c7fcfe9d6ffb34c6e53ff9dfe4fed1df5e1a6da064b0321b581497a62" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1246/cybara-v1.0.1246-linux-arm64-cli"; sha256 "60397c89de9a381757862b584d0ef7e639937ef5f352d3f4b9db14912533d05d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1246/cybara-v1.0.1246-linux-x64-cli"; sha256 "b03ed51cb08b0d9368044d37247f35752d78244741e530b14a001dc81637d71e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
