class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2451"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2451/cybara-v1.0.2451-darwin-arm64-cli"; sha256 "a92969201889d9ae2b147ef737a7b3ec76c480028fe9df9d670904bdc1f2bb3c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2451/cybara-v1.0.2451-darwin-x64-cli"; sha256 "a8ce34f95abb594a9b0b650fca8760fea17788548845290574a09ade9f1293a8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2451/cybara-v1.0.2451-linux-arm64-cli"; sha256 "5011d8dd61835c66611a7cf8bc3694372add81db1fb2a8124e2f2142dcdbbe07" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2451/cybara-v1.0.2451-linux-x64-cli"; sha256 "1ccf6314e5b15baad6f869b368ede598d55a45e70595e724617c46c021dcadc7" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
