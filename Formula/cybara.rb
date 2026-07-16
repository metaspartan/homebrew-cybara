class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1745"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1745/cybara-v1.0.1745-darwin-arm64-cli"; sha256 "30bfd9550b07a715ad1ee291b26ee864053062e7bffec4fe69ea1c61a9a57e23" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1745/cybara-v1.0.1745-darwin-x64-cli"; sha256 "7c540b1889b12c77a74bdad49fc436290ad1a4d7d1e52b8c5701df37b5976eb0" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1745/cybara-v1.0.1745-linux-arm64-cli"; sha256 "5bd4b159e182cc8b2ddcfea7bd28573c3f2c01cc268b4c8274b2cd3bbce4559f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1745/cybara-v1.0.1745-linux-x64-cli"; sha256 "37109c0060d6ac1426952ec146f7080a56257ca1378f8eddf89ffe38e65037b4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
