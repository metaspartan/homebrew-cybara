class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1820"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1820/cybara-v1.0.1820-darwin-arm64-cli"; sha256 "0232dc5b8e6d337b468135b3bcd0ffaf2cd35a8d3e47c388b5d50facddd2c7ac" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1820/cybara-v1.0.1820-darwin-x64-cli"; sha256 "5dbf8ba6ba8878c8678eb565456d9148f220343d54510e3e3ce88d1773d52f44" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1820/cybara-v1.0.1820-linux-arm64-cli"; sha256 "15c7ba7ebd94b2c2d8316fc1baa002475b51bc8ce5b0ed0a3ca1b2aee2411325" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1820/cybara-v1.0.1820-linux-x64-cli"; sha256 "082a108f3446f173b012215ea1d8c44b36c44a7d6526ee3d63da889807d5dc5f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
