class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1370"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1370/cybara-v1.0.1370-darwin-arm64-cli"; sha256 "5255fa23cbb678d6069dfaad0cccb0cec863a7720bfcfdc208a5bb6bf46e5807" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1370/cybara-v1.0.1370-darwin-x64-cli"; sha256 "49644a014354383b4cc686bc64b59bab549861e9dd150d2918562a42380c66de" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1370/cybara-v1.0.1370-linux-arm64-cli"; sha256 "b57870be76ec116e67617ed3eff5ca8b11bb1c79786c5352c5eb1d9c7de608f4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1370/cybara-v1.0.1370-linux-x64-cli"; sha256 "00984616034fde015cda5e410ab4a0f2c1ac62cf1a58800562c7551e47aaec4b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
