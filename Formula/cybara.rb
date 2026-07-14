class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1493"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1493/cybara-v1.0.1493-darwin-arm64-cli"; sha256 "2e6cb53ac202eeb69b0f75cfae68f2065ae890a903fcba39bba4236a8d31cfad" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1493/cybara-v1.0.1493-darwin-x64-cli"; sha256 "c1a7e3eb0c3b361937346d19aad6402007d5890ea3d950e89a03e4ac78b4c03c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1493/cybara-v1.0.1493-linux-arm64-cli"; sha256 "3c4c6de95cd7ef7c90075e0c29c5bad6e3c8bc8aa0e61d18789cbb44c7d17469" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1493/cybara-v1.0.1493-linux-x64-cli"; sha256 "c18fb7c8a37c5ce4659cd1dd7e51ad0a2679a1f65395b23cd1b64ce899479371" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
