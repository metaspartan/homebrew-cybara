class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1856"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1856/cybara-v1.0.1856-darwin-arm64-cli"; sha256 "8b8297c3fb53a2ceef7f19b62dbff4fbf40e531606b183e8477aca90600194b5" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1856/cybara-v1.0.1856-darwin-x64-cli"; sha256 "4a963a68effc9a55eae398deb50acbaa894cfd037f1d8403d64d117765f7deac" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1856/cybara-v1.0.1856-linux-arm64-cli"; sha256 "b745ee232dbacd0d48436dd11017efb33cab8e30212ee6c0765be5f34ce394f5" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1856/cybara-v1.0.1856-linux-x64-cli"; sha256 "4b5c90cedbd97a4a0853bf560e8f94485c6afd3c45a62e4731a1fa49d850bd56" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
