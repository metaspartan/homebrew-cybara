class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1652"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1652/cybara-v1.0.1652-darwin-arm64-cli"; sha256 "6f1041c8ef415d6cfc0da313607d3b622920682ff43cfeb7d9bdf3325c1d7efb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1652/cybara-v1.0.1652-darwin-x64-cli"; sha256 "b55d2ed4c5dca82e6afca609e8424cdd2284927d76ee7fc90d21219d1e06aee4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1652/cybara-v1.0.1652-linux-arm64-cli"; sha256 "9e03acb83e52431e1c5a230be2efa32ac0cb693dd403f1d80663cb3b9fd2bd0f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1652/cybara-v1.0.1652-linux-x64-cli"; sha256 "daa6b1f818b062d2ef33daadce099d66c1347cc827c44903a999169f4959ddd8" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
