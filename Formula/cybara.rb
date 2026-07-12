class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1407"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1407/cybara-v1.0.1407-darwin-arm64-cli"; sha256 "61ec48e10a1d36340f255321acf17fad9c1ba37743e56a25128c3cc49d2732b8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1407/cybara-v1.0.1407-darwin-x64-cli"; sha256 "eb5713a557d7f06013bf9c8d8b64e9fde4f8ce9003e14812232e309f47575220" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1407/cybara-v1.0.1407-linux-arm64-cli"; sha256 "738510ca84400e6abe9c3d3bab1f5034814d40dc35c056d5e0e9c8be02468480" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1407/cybara-v1.0.1407-linux-x64-cli"; sha256 "c2780464ebf3917411ea15822021cc7f9f680cd571776d6a34788ec260497edf" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
