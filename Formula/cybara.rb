class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2533"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2533/cybara-v1.0.2533-darwin-arm64-cli"; sha256 "f241d7d6f20f627ab8752957e333615e29be22d46e3b78fc0b52343fb3015d12" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2533/cybara-v1.0.2533-darwin-x64-cli"; sha256 "5aa505c49161fb244d747502bca820f149c0eae874f0ba577ee723dd479f9f6a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2533/cybara-v1.0.2533-linux-arm64-cli"; sha256 "04315513f282f44c7b0a7d38d971db095eabb0ca586a8b0b266e0e36be7abba0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2533/cybara-v1.0.2533-linux-x64-cli"; sha256 "c69c129ffd799dfa5bf5ad45f39cfba5e7aee7ed1e8bd3e57b07320b5a8e60da" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
