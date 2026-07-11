class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1216"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1216/cybara-v1.0.1216-darwin-arm64-cli"; sha256 "66eab299df1f24547b154bac7813254712cf6309fc6e307f84a5c2dda1e70465" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1216/cybara-v1.0.1216-darwin-x64-cli"; sha256 "cf91f09408621a9b31787062f77db1db6f5171a3d7e22a1dbdf683112b6d8afd" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1216/cybara-v1.0.1216-linux-arm64-cli"; sha256 "5ad696241ae8c0f900cae87aefd469a8a40482e84c4ae273b5a5ab273cb61a46" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1216/cybara-v1.0.1216-linux-x64-cli"; sha256 "75f5d1804981f93ff2c6e54781db9cd84ee645564b0aa2ba29e5542772861c9f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
