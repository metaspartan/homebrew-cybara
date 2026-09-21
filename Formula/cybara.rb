class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2370"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2370/cybara-v1.0.2370-darwin-arm64-cli"; sha256 "08a2bc8ba2a591324720f53899a86013623dc1023ce030f677e56b0ccd8dc094" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2370/cybara-v1.0.2370-darwin-x64-cli"; sha256 "e410583326cd8d4cc2c162bfb82d5fc36c8ea7737ed4862ea26c94b6cfbf3a2f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2370/cybara-v1.0.2370-linux-arm64-cli"; sha256 "3603654bb38417834d8e07bb184ecc4d646c5bb9b55d71576c6b89ad84d07ec0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2370/cybara-v1.0.2370-linux-x64-cli"; sha256 "83e54daec22e4e10b16d18c8684d607f00fb3a3aba04e3217c923c47cf8cfb3b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
