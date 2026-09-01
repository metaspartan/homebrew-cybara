class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2240"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2240/cybara-v1.0.2240-darwin-arm64-cli"; sha256 "469a97c56a1e5ba91e1e195544172b26840012e8eef5e1826ab2a674edf9acf8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2240/cybara-v1.0.2240-darwin-x64-cli"; sha256 "a2aca2fbba3085cc5a97ec9c866efa909d49d6f23d46496ddab694f20a639814" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2240/cybara-v1.0.2240-linux-arm64-cli"; sha256 "e68d2781d45e734bba890565e85c02b959003042622a44311bf5e167415d382f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2240/cybara-v1.0.2240-linux-x64-cli"; sha256 "ce13b414e74efe89165213e7603694542c06497d8c6e57b3d630c82d4e3e3889" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
