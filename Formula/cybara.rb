class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1585"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1585/cybara-v1.0.1585-darwin-arm64-cli"; sha256 "202713b99dd3322bae87d198a5a5de3d653d51aadaae2238bb56d8739c20d8a0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1585/cybara-v1.0.1585-darwin-x64-cli"; sha256 "8278bcd24bdf8e98b9668e5d0ffd32f5381cc24d1e02af3e4bc42087fc0912ca" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1585/cybara-v1.0.1585-linux-arm64-cli"; sha256 "4ffc92c48e61f174355806f2cc9ac1141acf3a8ee0910c277f419aa105dd27ce" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1585/cybara-v1.0.1585-linux-x64-cli"; sha256 "06a033c0dd2a9633b64bc9c646d51f545266b999732dfca5477e2ab9c0dffb2a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
