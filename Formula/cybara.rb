class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1431"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1431/cybara-v1.0.1431-darwin-arm64-cli"; sha256 "4a5898f8aa78bb0b1ff4aa979c1a00fe97d70fc6de0e8c9f44a974b76c5a81c0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1431/cybara-v1.0.1431-darwin-x64-cli"; sha256 "6a5854cd3f51c7e77350379cc94d74e67dcfd6a9771d6920618f89b50024ced8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1431/cybara-v1.0.1431-linux-arm64-cli"; sha256 "1aa429e31fba8e76ab229257a289bd4b542659152fe69e3216306b04f9cb3c60" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1431/cybara-v1.0.1431-linux-x64-cli"; sha256 "3607d43d62b426e422ac07f33eeb51d31ac32085073c607cb667ddcb63105b13" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
