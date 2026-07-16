class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1673"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1673/cybara-v1.0.1673-darwin-arm64-cli"; sha256 "527adf73a2d88e1766391e58977ed3bcd084e20310a52cc922228a6c4d9ae549" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1673/cybara-v1.0.1673-darwin-x64-cli"; sha256 "b07903ca8886b26338eff1bb9c5f4101a616f8967b96aeff37c9bf54056671ef" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1673/cybara-v1.0.1673-linux-arm64-cli"; sha256 "f8a3a88c5672c00899c127360c5ac70ec47fc718a58c6c42c387ed49858a1cf0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1673/cybara-v1.0.1673-linux-x64-cli"; sha256 "9eff2b6342f97528690041dce62ab9de58e478cbf1ac02b56452c492e2b3f8f3" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
