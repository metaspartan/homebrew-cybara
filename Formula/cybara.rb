class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1383"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1383/cybara-v1.0.1383-darwin-arm64-cli"; sha256 "416ad6a6acf017d497df2edc0f3de740cc71eb02dbbc3c3879b88ca106900f64" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1383/cybara-v1.0.1383-darwin-x64-cli"; sha256 "542d824e61086f5513b50af07561d80235c0bc0c01e98f65cc6861461967bb2f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1383/cybara-v1.0.1383-linux-arm64-cli"; sha256 "c526d86adf330681f40bd58805f46f054018ae9d36cf34a0f89a830ad7556392" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1383/cybara-v1.0.1383-linux-x64-cli"; sha256 "537b9e42a2f015d6d6df4edeee29e946407c4fc2f7a08d824cc74b59d642a4be" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
