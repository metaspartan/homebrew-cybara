class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2512"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2512/cybara-v1.0.2512-darwin-arm64-cli"; sha256 "22b0b53b6beb6a6c2f7c7d3b7582ace6c3529ed53ef30ff797ce2e7e8d07acd2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2512/cybara-v1.0.2512-darwin-x64-cli"; sha256 "9268cfcecbecfff8efacee4b8d5cd1d7859f9bb3f1068d1fea9586a4d032c97e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2512/cybara-v1.0.2512-linux-arm64-cli"; sha256 "4dac77f1925ab259cbb3c50d7e1bff1e0bbc867915ffc59404688c167e70c63a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2512/cybara-v1.0.2512-linux-x64-cli"; sha256 "0b1002bba9c815af04d80b0211c229b68d690c4d40c4e3cb78028e5a3c762f6c" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
