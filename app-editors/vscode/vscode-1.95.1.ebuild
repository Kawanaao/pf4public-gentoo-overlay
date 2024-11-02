# Copyright 2009-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )

inherit desktop flag-o-matic multilib ninja-utils pax-utils portability python-any-r1 toolchain-funcs xdg-utils

DESCRIPTION="Visual Studio Code - Open Source"
HOMEPAGE="https://github.com/microsoft/vscode"
LICENSE="MIT"
SLOT="0"
SRC_URI="!build-online? (
	https://codeload.github.com/ramya-rao-a/css-parser/tar.gz/vscode -> @emmetio-css-parser-0.4.0.tgz

	https://registry.yarnpkg.com/@ampproject/remapping/-/remapping-2.2.0.tgz -> @ampproject-remapping-2.2.0.tgz
	https://registry.yarnpkg.com/@azure-rest/ai-translation-text/-/ai-translation-text-1.0.0-beta.1.tgz -> @azure-rest-ai-translation-text-1.0.0-beta.1.tgz
	https://registry.yarnpkg.com/@azure-rest/core-client/-/core-client-1.4.0.tgz -> @azure-rest-core-client-1.4.0.tgz
	https://registry.yarnpkg.com/@azure/abort-controller/-/abort-controller-1.0.2.tgz -> @azure-abort-controller-1.0.2.tgz
	https://registry.yarnpkg.com/@azure/abort-controller/-/abort-controller-1.0.4.tgz -> @azure-abort-controller-1.0.4.tgz
	https://registry.yarnpkg.com/@azure/abort-controller/-/abort-controller-2.1.2.tgz -> @azure-abort-controller-2.1.2.tgz
	https://registry.yarnpkg.com/@azure/core-asynciterator-polyfill/-/core-asynciterator-polyfill-1.0.0.tgz -> @azure-core-asynciterator-polyfill-1.0.0.tgz
	https://registry.yarnpkg.com/@azure/core-auth/-/core-auth-1.5.0.tgz -> @azure-core-auth-1.5.0.tgz
	https://registry.yarnpkg.com/@azure/core-auth/-/core-auth-1.7.2.tgz -> @azure-core-auth-1.7.2.tgz
	https://registry.yarnpkg.com/@azure/core-client/-/core-client-1.5.0.tgz -> @azure-core-client-1.5.0.tgz
	https://registry.yarnpkg.com/@azure/core-http/-/core-http-2.2.2.tgz -> @azure-core-http-2.2.2.tgz
	https://registry.yarnpkg.com/@azure/core-lro/-/core-lro-2.2.1.tgz -> @azure-core-lro-2.2.1.tgz
	https://registry.yarnpkg.com/@azure/core-paging/-/core-paging-1.2.0.tgz -> @azure-core-paging-1.2.0.tgz
	https://registry.yarnpkg.com/@azure/core-rest-pipeline/-/core-rest-pipeline-1.16.0.tgz -> @azure-core-rest-pipeline-1.16.0.tgz
	https://registry.yarnpkg.com/@azure/core-rest-pipeline/-/core-rest-pipeline-1.7.0.tgz -> @azure-core-rest-pipeline-1.7.0.tgz
	https://registry.yarnpkg.com/@azure/core-tracing/-/core-tracing-1.0.0-preview.13.tgz -> @azure-core-tracing-1.0.0-preview.13.tgz
	https://registry.yarnpkg.com/@azure/core-tracing/-/core-tracing-1.0.1.tgz -> @azure-core-tracing-1.0.1.tgz
	https://registry.yarnpkg.com/@azure/core-tracing/-/core-tracing-1.1.2.tgz -> @azure-core-tracing-1.1.2.tgz
	https://registry.yarnpkg.com/@azure/core-util/-/core-util-1.9.0.tgz -> @azure-core-util-1.9.0.tgz
	https://registry.yarnpkg.com/@azure/cosmos/-/cosmos-3.17.3.tgz -> @azure-cosmos-3.17.3.tgz
	https://registry.yarnpkg.com/@azure/identity/-/identity-4.2.1.tgz -> @azure-identity-4.2.1.tgz
	https://registry.yarnpkg.com/@azure/logger/-/logger-1.0.1.tgz -> @azure-logger-1.0.1.tgz
	https://registry.yarnpkg.com/@azure/logger/-/logger-1.0.3.tgz -> @azure-logger-1.0.3.tgz
	https://registry.yarnpkg.com/@azure/ms-rest-azure-env/-/ms-rest-azure-env-2.0.0.tgz -> @azure-ms-rest-azure-env-2.0.0.tgz
	https://registry.yarnpkg.com/@azure/msal-browser/-/msal-browser-3.17.0.tgz -> @azure-msal-browser-3.17.0.tgz
	https://registry.yarnpkg.com/@azure/msal-common/-/msal-common-14.12.0.tgz -> @azure-msal-common-14.12.0.tgz
	https://registry.yarnpkg.com/@azure/msal-common/-/msal-common-14.14.2.tgz -> @azure-msal-common-14.14.2.tgz
	https://registry.yarnpkg.com/@azure/msal-node/-/msal-node-2.13.1.tgz -> @azure-msal-node-2.13.1.tgz
	https://registry.yarnpkg.com/@azure/msal-node/-/msal-node-2.9.2.tgz -> @azure-msal-node-2.9.2.tgz
	https://registry.yarnpkg.com/@azure/storage-blob/-/storage-blob-12.8.0.tgz -> @azure-storage-blob-12.8.0.tgz
	https://registry.yarnpkg.com/@babel/code-frame/-/code-frame-7.22.13.tgz -> @babel-code-frame-7.22.13.tgz
	https://registry.yarnpkg.com/@babel/compat-data/-/compat-data-7.18.8.tgz -> @babel-compat-data-7.18.8.tgz
	https://registry.yarnpkg.com/@babel/core/-/core-7.18.10.tgz -> @babel-core-7.18.10.tgz
	https://registry.yarnpkg.com/@babel/generator/-/generator-7.23.0.tgz -> @babel-generator-7.23.0.tgz
	https://registry.yarnpkg.com/@babel/helper-compilation-targets/-/helper-compilation-targets-7.18.9.tgz -> @babel-helper-compilation-targets-7.18.9.tgz
	https://registry.yarnpkg.com/@babel/helper-environment-visitor/-/helper-environment-visitor-7.22.20.tgz -> @babel-helper-environment-visitor-7.22.20.tgz
	https://registry.yarnpkg.com/@babel/helper-function-name/-/helper-function-name-7.23.0.tgz -> @babel-helper-function-name-7.23.0.tgz
	https://registry.yarnpkg.com/@babel/helper-hoist-variables/-/helper-hoist-variables-7.22.5.tgz -> @babel-helper-hoist-variables-7.22.5.tgz
	https://registry.yarnpkg.com/@babel/helper-module-imports/-/helper-module-imports-7.18.6.tgz -> @babel-helper-module-imports-7.18.6.tgz
	https://registry.yarnpkg.com/@babel/helper-module-transforms/-/helper-module-transforms-7.18.9.tgz -> @babel-helper-module-transforms-7.18.9.tgz
	https://registry.yarnpkg.com/@babel/helper-simple-access/-/helper-simple-access-7.18.6.tgz -> @babel-helper-simple-access-7.18.6.tgz
	https://registry.yarnpkg.com/@babel/helper-split-export-declaration/-/helper-split-export-declaration-7.22.6.tgz -> @babel-helper-split-export-declaration-7.22.6.tgz
	https://registry.yarnpkg.com/@babel/helper-string-parser/-/helper-string-parser-7.22.5.tgz -> @babel-helper-string-parser-7.22.5.tgz
	https://registry.yarnpkg.com/@babel/helper-validator-identifier/-/helper-validator-identifier-7.22.20.tgz -> @babel-helper-validator-identifier-7.22.20.tgz
	https://registry.yarnpkg.com/@babel/helper-validator-option/-/helper-validator-option-7.18.6.tgz -> @babel-helper-validator-option-7.18.6.tgz
	https://registry.yarnpkg.com/@babel/helpers/-/helpers-7.18.9.tgz -> @babel-helpers-7.18.9.tgz
	https://registry.yarnpkg.com/@babel/highlight/-/highlight-7.22.20.tgz -> @babel-highlight-7.22.20.tgz
	https://registry.yarnpkg.com/@babel/parser/-/parser-7.23.0.tgz -> @babel-parser-7.23.0.tgz
	https://registry.yarnpkg.com/@babel/template/-/template-7.22.15.tgz -> @babel-template-7.22.15.tgz
	https://registry.yarnpkg.com/@babel/traverse/-/traverse-7.23.2.tgz -> @babel-traverse-7.23.2.tgz
	https://registry.yarnpkg.com/@babel/types/-/types-7.23.0.tgz -> @babel-types-7.23.0.tgz
	https://registry.yarnpkg.com/@bcoe/v8-coverage/-/v8-coverage-0.2.3.tgz -> @bcoe-v8-coverage-0.2.3.tgz
	https://registry.yarnpkg.com/@cspotcode/source-map-support/-/source-map-support-0.8.1.tgz -> @cspotcode-source-map-support-0.8.1.tgz
	https://registry.yarnpkg.com/@csstools/selector-specificity/-/selector-specificity-3.0.1.tgz -> @csstools-selector-specificity-3.0.1.tgz
	https://registry.yarnpkg.com/@discoveryjs/json-ext/-/json-ext-0.5.3.tgz -> @discoveryjs-json-ext-0.5.3.tgz
	https://registry.yarnpkg.com/@electron/asar/-/asar-3.2.10.tgz -> @electron-asar-3.2.10.tgz
	https://registry.yarnpkg.com/@electron/get/-/get-2.0.2.tgz -> @electron-get-2.0.2.tgz
	https://registry.yarnpkg.com/@electron/get/-/get-2.0.3.tgz -> @electron-get-2.0.3.tgz
	https://registry.yarnpkg.com/@emmetio/abbreviation/-/abbreviation-2.3.3.tgz -> @emmetio-abbreviation-2.3.3.tgz
	https://registry.yarnpkg.com/@emmetio/css-abbreviation/-/css-abbreviation-2.1.8.tgz -> @emmetio-css-abbreviation-2.1.8.tgz
	https://registry.yarnpkg.com/@emmetio/html-matcher/-/html-matcher-0.3.3.tgz -> @emmetio-html-matcher-0.3.3.tgz
	https://registry.yarnpkg.com/@emmetio/math-expression/-/math-expression-1.0.5.tgz -> @emmetio-math-expression-1.0.5.tgz
	https://registry.yarnpkg.com/@emmetio/scanner/-/scanner-1.0.4.tgz -> @emmetio-scanner-1.0.4.tgz
	https://registry.yarnpkg.com/@emmetio/stream-reader-utils/-/stream-reader-utils-0.1.0.tgz -> @emmetio-stream-reader-utils-0.1.0.tgz
	https://registry.yarnpkg.com/@emmetio/stream-reader/-/stream-reader-2.2.0.tgz -> @emmetio-stream-reader-2.2.0.tgz
	https://registry.yarnpkg.com/@enonic/fnv-plus/-/fnv-plus-1.3.0.tgz -> @enonic-fnv-plus-1.3.0.tgz
	https://registry.yarnpkg.com/@es-joy/jsdoccomment/-/jsdoccomment-0.48.0.tgz -> @es-joy-jsdoccomment-0.48.0.tgz
	https://registry.yarnpkg.com/@esbuild/aix-ppc64/-/aix-ppc64-0.23.0.tgz -> @esbuild-aix-ppc64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/android-arm/-/android-arm-0.23.0.tgz -> @esbuild-android-arm-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/android-arm64/-/android-arm64-0.23.0.tgz -> @esbuild-android-arm64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/android-x64/-/android-x64-0.23.0.tgz -> @esbuild-android-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/darwin-arm64/-/darwin-arm64-0.23.0.tgz -> @esbuild-darwin-arm64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/darwin-x64/-/darwin-x64-0.23.0.tgz -> @esbuild-darwin-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/freebsd-arm64/-/freebsd-arm64-0.23.0.tgz -> @esbuild-freebsd-arm64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/freebsd-x64/-/freebsd-x64-0.23.0.tgz -> @esbuild-freebsd-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-arm/-/linux-arm-0.23.0.tgz -> @esbuild-linux-arm-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-arm64/-/linux-arm64-0.23.0.tgz -> @esbuild-linux-arm64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-ia32/-/linux-ia32-0.23.0.tgz -> @esbuild-linux-ia32-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-loong64/-/linux-loong64-0.23.0.tgz -> @esbuild-linux-loong64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-mips64el/-/linux-mips64el-0.23.0.tgz -> @esbuild-linux-mips64el-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-ppc64/-/linux-ppc64-0.23.0.tgz -> @esbuild-linux-ppc64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-riscv64/-/linux-riscv64-0.23.0.tgz -> @esbuild-linux-riscv64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-s390x/-/linux-s390x-0.23.0.tgz -> @esbuild-linux-s390x-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/linux-x64/-/linux-x64-0.23.0.tgz -> @esbuild-linux-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/netbsd-x64/-/netbsd-x64-0.23.0.tgz -> @esbuild-netbsd-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/openbsd-arm64/-/openbsd-arm64-0.23.0.tgz -> @esbuild-openbsd-arm64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/openbsd-x64/-/openbsd-x64-0.23.0.tgz -> @esbuild-openbsd-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/sunos-x64/-/sunos-x64-0.23.0.tgz -> @esbuild-sunos-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/win32-arm64/-/win32-arm64-0.23.0.tgz -> @esbuild-win32-arm64-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/win32-ia32/-/win32-ia32-0.23.0.tgz -> @esbuild-win32-ia32-0.23.0.tgz
	https://registry.yarnpkg.com/@esbuild/win32-x64/-/win32-x64-0.23.0.tgz -> @esbuild-win32-x64-0.23.0.tgz
	https://registry.yarnpkg.com/@eslint-community/eslint-utils/-/eslint-utils-4.4.0.tgz -> @eslint-community-eslint-utils-4.4.0.tgz
	https://registry.yarnpkg.com/@eslint-community/regexpp/-/regexpp-4.11.1.tgz -> @eslint-community-regexpp-4.11.1.tgz
	https://registry.yarnpkg.com/@eslint/config-array/-/config-array-0.18.0.tgz -> @eslint-config-array-0.18.0.tgz
	https://registry.yarnpkg.com/@eslint/core/-/core-0.6.0.tgz -> @eslint-core-0.6.0.tgz
	https://registry.yarnpkg.com/@eslint/eslintrc/-/eslintrc-3.1.0.tgz -> @eslint-eslintrc-3.1.0.tgz
	https://registry.yarnpkg.com/@eslint/js/-/js-9.11.1.tgz -> @eslint-js-9.11.1.tgz
	https://registry.yarnpkg.com/@eslint/object-schema/-/object-schema-2.1.4.tgz -> @eslint-object-schema-2.1.4.tgz
	https://registry.yarnpkg.com/@eslint/plugin-kit/-/plugin-kit-0.2.0.tgz -> @eslint-plugin-kit-0.2.0.tgz
	https://registry.yarnpkg.com/@gulp-sourcemaps/identity-map/-/identity-map-2.0.1.tgz -> @gulp-sourcemaps-identity-map-2.0.1.tgz
	https://registry.yarnpkg.com/@gulp-sourcemaps/map-sources/-/map-sources-1.0.0.tgz -> @gulp-sourcemaps-map-sources-1.0.0.tgz
	https://registry.yarnpkg.com/@humanwhocodes/module-importer/-/module-importer-1.0.1.tgz -> @humanwhocodes-module-importer-1.0.1.tgz
	https://registry.yarnpkg.com/@humanwhocodes/retry/-/retry-0.3.0.tgz -> @humanwhocodes-retry-0.3.0.tgz
	https://registry.yarnpkg.com/@isaacs/cliui/-/cliui-8.0.2.tgz -> @isaacs-cliui-8.0.2.tgz
	https://registry.yarnpkg.com/@istanbuljs/schema/-/schema-0.1.3.tgz -> @istanbuljs-schema-0.1.3.tgz
	https://registry.yarnpkg.com/@joaomoreno/unique-names-generator/-/unique-names-generator-5.1.0.tgz -> @joaomoreno-unique-names-generator-5.1.0.tgz
	https://registry.yarnpkg.com/@jridgewell/gen-mapping/-/gen-mapping-0.1.1.tgz -> @jridgewell-gen-mapping-0.1.1.tgz
	https://registry.yarnpkg.com/@jridgewell/gen-mapping/-/gen-mapping-0.3.2.tgz -> @jridgewell-gen-mapping-0.3.2.tgz
	https://registry.yarnpkg.com/@jridgewell/gen-mapping/-/gen-mapping-0.3.5.tgz -> @jridgewell-gen-mapping-0.3.5.tgz
	https://registry.yarnpkg.com/@jridgewell/resolve-uri/-/resolve-uri-3.1.1.tgz -> @jridgewell-resolve-uri-3.1.1.tgz
	https://registry.yarnpkg.com/@jridgewell/resolve-uri/-/resolve-uri-3.1.2.tgz -> @jridgewell-resolve-uri-3.1.2.tgz
	https://registry.yarnpkg.com/@jridgewell/set-array/-/set-array-1.2.1.tgz -> @jridgewell-set-array-1.2.1.tgz
	https://registry.yarnpkg.com/@jridgewell/source-map/-/source-map-0.3.6.tgz -> @jridgewell-source-map-0.3.6.tgz
	https://registry.yarnpkg.com/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.4.14.tgz -> @jridgewell-sourcemap-codec-1.4.14.tgz
	https://registry.yarnpkg.com/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.4.15.tgz -> @jridgewell-sourcemap-codec-1.4.15.tgz
	https://registry.yarnpkg.com/@jridgewell/trace-mapping/-/trace-mapping-0.3.25.tgz -> @jridgewell-trace-mapping-0.3.25.tgz
	https://registry.yarnpkg.com/@jridgewell/trace-mapping/-/trace-mapping-0.3.9.tgz -> @jridgewell-trace-mapping-0.3.9.tgz
	https://registry.yarnpkg.com/@jupyterlab/nbformat/-/nbformat-3.4.3.tgz -> @jupyterlab-nbformat-3.4.3.tgz
	https://registry.yarnpkg.com/@koa/cors/-/cors-5.0.0.tgz -> @koa-cors-5.0.0.tgz
	https://registry.yarnpkg.com/@koa/router/-/router-13.1.0.tgz -> @koa-router-13.1.0.tgz
	https://registry.yarnpkg.com/@lumino/coreutils/-/coreutils-1.12.0.tgz -> @lumino-coreutils-1.12.0.tgz
	https://registry.yarnpkg.com/@malept/cross-spawn-promise/-/cross-spawn-promise-2.0.0.tgz -> @malept-cross-spawn-promise-2.0.0.tgz
	https://registry.yarnpkg.com/@microsoft/1ds-core-js/-/1ds-core-js-3.2.13.tgz -> @microsoft-1ds-core-js-3.2.13.tgz
	https://registry.yarnpkg.com/@microsoft/1ds-core-js/-/1ds-core-js-4.0.3.tgz -> @microsoft-1ds-core-js-4.0.3.tgz
	https://registry.yarnpkg.com/@microsoft/1ds-post-js/-/1ds-post-js-3.2.13.tgz -> @microsoft-1ds-post-js-3.2.13.tgz
	https://registry.yarnpkg.com/@microsoft/1ds-post-js/-/1ds-post-js-4.0.3.tgz -> @microsoft-1ds-post-js-4.0.3.tgz
	https://registry.yarnpkg.com/@microsoft/applicationinsights-channel-js/-/applicationinsights-channel-js-3.0.4.tgz -> @microsoft-applicationinsights-channel-js-3.0.4.tgz
	https://registry.yarnpkg.com/@microsoft/applicationinsights-common/-/applicationinsights-common-3.0.4.tgz -> @microsoft-applicationinsights-common-3.0.4.tgz
	https://registry.yarnpkg.com/@microsoft/applicationinsights-core-js/-/applicationinsights-core-js-2.8.15.tgz -> @microsoft-applicationinsights-core-js-2.8.15.tgz
	https://registry.yarnpkg.com/@microsoft/applicationinsights-core-js/-/applicationinsights-core-js-3.0.4.tgz -> @microsoft-applicationinsights-core-js-3.0.4.tgz
	https://registry.yarnpkg.com/@microsoft/applicationinsights-shims/-/applicationinsights-shims-2.0.2.tgz -> @microsoft-applicationinsights-shims-2.0.2.tgz
	https://registry.yarnpkg.com/@microsoft/applicationinsights-shims/-/applicationinsights-shims-3.0.1.tgz -> @microsoft-applicationinsights-shims-3.0.1.tgz
	https://registry.yarnpkg.com/@microsoft/applicationinsights-web-basic/-/applicationinsights-web-basic-3.0.4.tgz -> @microsoft-applicationinsights-web-basic-3.0.4.tgz
	https://registry.yarnpkg.com/@microsoft/dynamicproto-js/-/dynamicproto-js-1.1.9.tgz -> @microsoft-dynamicproto-js-1.1.9.tgz
	https://registry.yarnpkg.com/@microsoft/dynamicproto-js/-/dynamicproto-js-2.0.2.tgz -> @microsoft-dynamicproto-js-2.0.2.tgz
	https://registry.yarnpkg.com/@nevware21/ts-async/-/ts-async-0.3.0.tgz -> @nevware21-ts-async-0.3.0.tgz
	https://registry.yarnpkg.com/@nevware21/ts-utils/-/ts-utils-0.10.1.tgz -> @nevware21-ts-utils-0.10.1.tgz
	https://registry.yarnpkg.com/@nodelib/fs.scandir/-/fs.scandir-2.1.5.tgz -> @nodelib-fs.scandir-2.1.5.tgz
	https://registry.yarnpkg.com/@nodelib/fs.stat/-/fs.stat-2.0.5.tgz -> @nodelib-fs.stat-2.0.5.tgz
	https://registry.yarnpkg.com/@nodelib/fs.walk/-/fs.walk-1.2.8.tgz -> @nodelib-fs.walk-1.2.8.tgz
	https://registry.yarnpkg.com/@npmcli/agent/-/agent-2.2.2.tgz -> @npmcli-agent-2.2.2.tgz
	https://registry.yarnpkg.com/@npmcli/fs/-/fs-3.1.1.tgz -> @npmcli-fs-3.1.1.tgz
	https://registry.yarnpkg.com/@octokit/auth-token/-/auth-token-2.5.0.tgz -> @octokit-auth-token-2.5.0.tgz
	https://registry.yarnpkg.com/@octokit/auth-token/-/auth-token-3.0.1.tgz -> @octokit-auth-token-3.0.1.tgz
	https://registry.yarnpkg.com/@octokit/auth-token/-/auth-token-3.0.4.tgz -> @octokit-auth-token-3.0.4.tgz
	https://registry.yarnpkg.com/@octokit/core/-/core-3.6.0.tgz -> @octokit-core-3.6.0.tgz
	https://registry.yarnpkg.com/@octokit/core/-/core-4.0.5.tgz -> @octokit-core-4.0.5.tgz
	https://registry.yarnpkg.com/@octokit/core/-/core-4.2.4.tgz -> @octokit-core-4.2.4.tgz
	https://registry.yarnpkg.com/@octokit/endpoint/-/endpoint-6.0.12.tgz -> @octokit-endpoint-6.0.12.tgz
	https://registry.yarnpkg.com/@octokit/endpoint/-/endpoint-7.0.1.tgz -> @octokit-endpoint-7.0.1.tgz
	https://registry.yarnpkg.com/@octokit/endpoint/-/endpoint-7.0.6.tgz -> @octokit-endpoint-7.0.6.tgz
	https://registry.yarnpkg.com/@octokit/graphql-schema/-/graphql-schema-14.4.0.tgz -> @octokit-graphql-schema-14.4.0.tgz
	https://registry.yarnpkg.com/@octokit/graphql/-/graphql-4.8.0.tgz -> @octokit-graphql-4.8.0.tgz
	https://registry.yarnpkg.com/@octokit/graphql/-/graphql-5.0.5.tgz -> @octokit-graphql-5.0.5.tgz
	https://registry.yarnpkg.com/@octokit/graphql/-/graphql-5.0.6.tgz -> @octokit-graphql-5.0.6.tgz
	https://registry.yarnpkg.com/@octokit/openapi-types/-/openapi-types-11.2.0.tgz -> @octokit-openapi-types-11.2.0.tgz
	https://registry.yarnpkg.com/@octokit/openapi-types/-/openapi-types-13.13.1.tgz -> @octokit-openapi-types-13.13.1.tgz
	https://registry.yarnpkg.com/@octokit/openapi-types/-/openapi-types-13.6.0.tgz -> @octokit-openapi-types-13.6.0.tgz
	https://registry.yarnpkg.com/@octokit/openapi-types/-/openapi-types-14.0.0.tgz -> @octokit-openapi-types-14.0.0.tgz
	https://registry.yarnpkg.com/@octokit/openapi-types/-/openapi-types-17.1.0.tgz -> @octokit-openapi-types-17.1.0.tgz
	https://registry.yarnpkg.com/@octokit/openapi-types/-/openapi-types-18.0.0.tgz -> @octokit-openapi-types-18.0.0.tgz
	https://registry.yarnpkg.com/@octokit/plugin-paginate-rest/-/plugin-paginate-rest-2.17.0.tgz -> @octokit-plugin-paginate-rest-2.17.0.tgz
	https://registry.yarnpkg.com/@octokit/plugin-paginate-rest/-/plugin-paginate-rest-4.2.0.tgz -> @octokit-plugin-paginate-rest-4.2.0.tgz
	https://registry.yarnpkg.com/@octokit/plugin-paginate-rest/-/plugin-paginate-rest-4.3.1.tgz -> @octokit-plugin-paginate-rest-4.3.1.tgz
	https://registry.yarnpkg.com/@octokit/plugin-request-log/-/plugin-request-log-1.0.4.tgz -> @octokit-plugin-request-log-1.0.4.tgz
	https://registry.yarnpkg.com/@octokit/plugin-rest-endpoint-methods/-/plugin-rest-endpoint-methods-5.13.0.tgz -> @octokit-plugin-rest-endpoint-methods-5.13.0.tgz
	https://registry.yarnpkg.com/@octokit/plugin-rest-endpoint-methods/-/plugin-rest-endpoint-methods-6.4.0.tgz -> @octokit-plugin-rest-endpoint-methods-6.4.0.tgz
	https://registry.yarnpkg.com/@octokit/plugin-rest-endpoint-methods/-/plugin-rest-endpoint-methods-6.8.1.tgz -> @octokit-plugin-rest-endpoint-methods-6.8.1.tgz
	https://registry.yarnpkg.com/@octokit/request-error/-/request-error-2.1.0.tgz -> @octokit-request-error-2.1.0.tgz
	https://registry.yarnpkg.com/@octokit/request-error/-/request-error-3.0.1.tgz -> @octokit-request-error-3.0.1.tgz
	https://registry.yarnpkg.com/@octokit/request-error/-/request-error-3.0.3.tgz -> @octokit-request-error-3.0.3.tgz
	https://registry.yarnpkg.com/@octokit/request/-/request-5.6.3.tgz -> @octokit-request-5.6.3.tgz
	https://registry.yarnpkg.com/@octokit/request/-/request-6.2.1.tgz -> @octokit-request-6.2.1.tgz
	https://registry.yarnpkg.com/@octokit/request/-/request-6.2.8.tgz -> @octokit-request-6.2.8.tgz
	https://registry.yarnpkg.com/@octokit/rest/-/rest-18.12.0.tgz -> @octokit-rest-18.12.0.tgz
	https://registry.yarnpkg.com/@octokit/rest/-/rest-19.0.4.tgz -> @octokit-rest-19.0.4.tgz
	https://registry.yarnpkg.com/@octokit/types/-/types-6.34.0.tgz -> @octokit-types-6.34.0.tgz
	https://registry.yarnpkg.com/@octokit/types/-/types-7.2.0.tgz -> @octokit-types-7.2.0.tgz
	https://registry.yarnpkg.com/@octokit/types/-/types-7.5.1.tgz -> @octokit-types-7.5.1.tgz
	https://registry.yarnpkg.com/@octokit/types/-/types-8.2.1.tgz -> @octokit-types-8.2.1.tgz
	https://registry.yarnpkg.com/@octokit/types/-/types-9.2.0.tgz -> @octokit-types-9.2.0.tgz
	https://registry.yarnpkg.com/@octokit/types/-/types-9.3.2.tgz -> @octokit-types-9.3.2.tgz
	https://registry.yarnpkg.com/@opentelemetry/api/-/api-1.0.3.tgz -> @opentelemetry-api-1.0.3.tgz
	https://registry.yarnpkg.com/@parcel/watcher/-/watcher-2.1.0.tgz -> @parcel-watcher-2.1.0.tgz
	https://registry.yarnpkg.com/@pkgjs/parseargs/-/parseargs-0.11.0.tgz -> @pkgjs-parseargs-0.11.0.tgz
	https://registry.yarnpkg.com/@pkgr/core/-/core-0.1.1.tgz -> @pkgr-core-0.1.1.tgz
	https://registry.yarnpkg.com/@playwright/browser-chromium/-/browser-chromium-1.47.2.tgz -> @playwright-browser-chromium-1.47.2.tgz
	https://registry.yarnpkg.com/@playwright/test/-/test-1.46.1.tgz -> @playwright-test-1.46.1.tgz
	https://registry.yarnpkg.com/@sindresorhus/is/-/is-4.6.0.tgz -> @sindresorhus-is-4.6.0.tgz
	https://registry.yarnpkg.com/@sinonjs/commons/-/commons-1.8.3.tgz -> @sinonjs-commons-1.8.3.tgz
	https://registry.yarnpkg.com/@sinonjs/fake-timers/-/fake-timers-7.1.2.tgz -> @sinonjs-fake-timers-7.1.2.tgz
	https://registry.yarnpkg.com/@sinonjs/fake-timers/-/fake-timers-8.1.0.tgz -> @sinonjs-fake-timers-8.1.0.tgz
	https://registry.yarnpkg.com/@sinonjs/samsam/-/samsam-6.0.2.tgz -> @sinonjs-samsam-6.0.2.tgz
	https://registry.yarnpkg.com/@sinonjs/text-encoding/-/text-encoding-0.7.1.tgz -> @sinonjs-text-encoding-0.7.1.tgz
	https://registry.yarnpkg.com/@stylistic/eslint-plugin-ts/-/eslint-plugin-ts-2.8.0.tgz -> @stylistic-eslint-plugin-ts-2.8.0.tgz
	https://registry.yarnpkg.com/@szmarczak/http-timer/-/http-timer-4.0.6.tgz -> @szmarczak-http-timer-4.0.6.tgz
	https://registry.yarnpkg.com/@thisismanta/pessimist/-/pessimist-1.2.0.tgz -> @thisismanta-pessimist-1.2.0.tgz
	https://registry.yarnpkg.com/@tokenizer/token/-/token-0.3.0.tgz -> @tokenizer-token-0.3.0.tgz
	https://registry.yarnpkg.com/@tootallnate/once/-/once-1.1.2.tgz -> @tootallnate-once-1.1.2.tgz
	https://registry.yarnpkg.com/@tootallnate/once/-/once-2.0.0.tgz -> @tootallnate-once-2.0.0.tgz
	https://registry.yarnpkg.com/@tootallnate/once/-/once-3.0.0.tgz -> @tootallnate-once-3.0.0.tgz
	https://registry.yarnpkg.com/@trysound/sax/-/sax-0.2.0.tgz -> @trysound-sax-0.2.0.tgz
	https://registry.yarnpkg.com/@ts-morph/common/-/common-0.20.0.tgz -> @ts-morph-common-0.20.0.tgz
	https://registry.yarnpkg.com/@tsconfig/node10/-/node10-1.0.9.tgz -> @tsconfig-node10-1.0.9.tgz
	https://registry.yarnpkg.com/@tsconfig/node12/-/node12-1.0.11.tgz -> @tsconfig-node12-1.0.11.tgz
	https://registry.yarnpkg.com/@tsconfig/node14/-/node14-1.0.3.tgz -> @tsconfig-node14-1.0.3.tgz
	https://registry.yarnpkg.com/@tsconfig/node16/-/node16-1.0.3.tgz -> @tsconfig-node16-1.0.3.tgz
	https://registry.yarnpkg.com/@types/ansi-colors/-/ansi-colors-3.2.0.tgz -> @types-ansi-colors-3.2.0.tgz
	https://registry.yarnpkg.com/@types/byline/-/byline-4.2.31.tgz -> @types-byline-4.2.31.tgz
	https://registry.yarnpkg.com/@types/byline/-/byline-4.2.32.tgz -> @types-byline-4.2.32.tgz
	https://registry.yarnpkg.com/@types/cacheable-request/-/cacheable-request-6.0.3.tgz -> @types-cacheable-request-6.0.3.tgz
	https://registry.yarnpkg.com/@types/chai/-/chai-4.2.14.tgz -> @types-chai-4.2.14.tgz
	https://registry.yarnpkg.com/@types/color-name/-/color-name-1.1.1.tgz -> @types-color-name-1.1.1.tgz
	https://registry.yarnpkg.com/@types/cookie/-/cookie-0.3.3.tgz -> @types-cookie-0.3.3.tgz
	https://registry.yarnpkg.com/@types/debounce/-/debounce-1.0.0.tgz -> @types-debounce-1.0.0.tgz
	https://registry.yarnpkg.com/@types/debug/-/debug-4.1.9.tgz -> @types-debug-4.1.9.tgz
	https://registry.yarnpkg.com/@types/dompurify/-/dompurify-3.0.5.tgz -> @types-dompurify-3.0.5.tgz
	https://registry.yarnpkg.com/@types/eslint/-/eslint-9.6.1.tgz -> @types-eslint-9.6.1.tgz
	https://registry.yarnpkg.com/@types/estree/-/estree-1.0.6.tgz -> @types-estree-1.0.6.tgz
	https://registry.yarnpkg.com/@types/events/-/events-1.2.0.tgz -> @types-events-1.2.0.tgz
	https://registry.yarnpkg.com/@types/events/-/events-3.0.0.tgz -> @types-events-3.0.0.tgz
	https://registry.yarnpkg.com/@types/expect/-/expect-1.20.4.tgz -> @types-expect-1.20.4.tgz
	https://registry.yarnpkg.com/@types/fancy-log/-/fancy-log-1.3.0.tgz -> @types-fancy-log-1.3.0.tgz
	https://registry.yarnpkg.com/@types/fs-extra/-/fs-extra-9.0.12.tgz -> @types-fs-extra-9.0.12.tgz
	https://registry.yarnpkg.com/@types/glob-stream/-/glob-stream-6.1.0.tgz -> @types-glob-stream-6.1.0.tgz
	https://registry.yarnpkg.com/@types/glob/-/glob-7.1.1.tgz -> @types-glob-7.1.1.tgz
	https://registry.yarnpkg.com/@types/glob/-/glob-7.1.3.tgz -> @types-glob-7.1.3.tgz
	https://registry.yarnpkg.com/@types/gulp-filter/-/gulp-filter-3.0.32.tgz -> @types-gulp-filter-3.0.32.tgz
	https://registry.yarnpkg.com/@types/gulp-gzip/-/gulp-gzip-0.0.31.tgz -> @types-gulp-gzip-0.0.31.tgz
	https://registry.yarnpkg.com/@types/gulp-json-editor/-/gulp-json-editor-2.2.31.tgz -> @types-gulp-json-editor-2.2.31.tgz
	https://registry.yarnpkg.com/@types/gulp-rename/-/gulp-rename-0.0.33.tgz -> @types-gulp-rename-0.0.33.tgz
	https://registry.yarnpkg.com/@types/gulp-sort/-/gulp-sort-2.0.4.tgz -> @types-gulp-sort-2.0.4.tgz
	https://registry.yarnpkg.com/@types/gulp-sourcemaps/-/gulp-sourcemaps-0.0.32.tgz -> @types-gulp-sourcemaps-0.0.32.tgz
	https://registry.yarnpkg.com/@types/gulp-svgmin/-/gulp-svgmin-1.2.1.tgz -> @types-gulp-svgmin-1.2.1.tgz
	https://registry.yarnpkg.com/@types/gulp-util/-/gulp-util-3.0.41.tgz -> @types-gulp-util-3.0.41.tgz
	https://registry.yarnpkg.com/@types/gulp/-/gulp-4.0.17.tgz -> @types-gulp-4.0.17.tgz
	https://registry.yarnpkg.com/@types/http-cache-semantics/-/http-cache-semantics-4.0.1.tgz -> @types-http-cache-semantics-4.0.1.tgz
	https://registry.yarnpkg.com/@types/http-cache-semantics/-/http-cache-semantics-4.0.4.tgz -> @types-http-cache-semantics-4.0.4.tgz
	https://registry.yarnpkg.com/@types/http-proxy-agent/-/http-proxy-agent-2.0.1.tgz -> @types-http-proxy-agent-2.0.1.tgz
	https://registry.yarnpkg.com/@types/istanbul-lib-coverage/-/istanbul-lib-coverage-2.0.6.tgz -> @types-istanbul-lib-coverage-2.0.6.tgz
	https://registry.yarnpkg.com/@types/js-beautify/-/js-beautify-1.8.0.tgz -> @types-js-beautify-1.8.0.tgz
	https://registry.yarnpkg.com/@types/jsdom/-/jsdom-21.1.0.tgz -> @types-jsdom-21.1.0.tgz
	https://registry.yarnpkg.com/@types/json-schema/-/json-schema-7.0.15.tgz -> @types-json-schema-7.0.15.tgz
	https://registry.yarnpkg.com/@types/kerberos/-/kerberos-1.1.2.tgz -> @types-kerberos-1.1.2.tgz
	https://registry.yarnpkg.com/@types/keyv/-/keyv-3.1.4.tgz -> @types-keyv-3.1.4.tgz
	https://registry.yarnpkg.com/@types/linkify-it/-/linkify-it-3.0.2.tgz -> @types-linkify-it-3.0.2.tgz
	https://registry.yarnpkg.com/@types/linkify-it/-/linkify-it-5.0.0.tgz -> @types-linkify-it-5.0.0.tgz
	https://registry.yarnpkg.com/@types/lodash.throttle/-/lodash.throttle-4.1.3.tgz -> @types-lodash.throttle-4.1.3.tgz
	https://registry.yarnpkg.com/@types/lodash/-/lodash-4.14.104.tgz -> @types-lodash-4.14.104.tgz
	https://registry.yarnpkg.com/@types/markdown-it/-/markdown-it-0.0.0.tgz -> @types-markdown-it-0.0.0.tgz
	https://registry.yarnpkg.com/@types/markdown-it/-/markdown-it-0.0.2.tgz -> @types-markdown-it-0.0.2.tgz
	https://registry.yarnpkg.com/@types/markdown-it/-/markdown-it-12.2.3.tgz -> @types-markdown-it-12.2.3.tgz
	https://registry.yarnpkg.com/@types/mdurl/-/mdurl-1.0.2.tgz -> @types-mdurl-1.0.2.tgz
	https://registry.yarnpkg.com/@types/mdurl/-/mdurl-2.0.0.tgz -> @types-mdurl-2.0.0.tgz
	https://registry.yarnpkg.com/@types/mime/-/mime-0.0.29.tgz -> @types-mime-0.0.29.tgz
	https://registry.yarnpkg.com/@types/minimatch/-/minimatch-3.0.3.tgz -> @types-minimatch-3.0.3.tgz
	https://registry.yarnpkg.com/@types/minimatch/-/minimatch-5.1.2.tgz -> @types-minimatch-5.1.2.tgz
	https://registry.yarnpkg.com/@types/minimist/-/minimist-1.2.1.tgz -> @types-minimist-1.2.1.tgz
	https://registry.yarnpkg.com/@types/mocha/-/mocha-10.0.2.tgz -> @types-mocha-10.0.2.tgz
	https://registry.yarnpkg.com/@types/mocha/-/mocha-10.0.6.tgz -> @types-mocha-10.0.6.tgz
	https://registry.yarnpkg.com/@types/mocha/-/mocha-9.1.1.tgz -> @types-mocha-9.1.1.tgz
	https://registry.yarnpkg.com/@types/ms/-/ms-0.7.32.tgz -> @types-ms-0.7.32.tgz
	https://registry.yarnpkg.com/@types/ncp/-/ncp-2.0.1.tgz -> @types-ncp-2.0.1.tgz
	https://registry.yarnpkg.com/@types/node-fetch/-/node-fetch-2.5.10.tgz -> @types-node-fetch-2.5.10.tgz
	https://registry.yarnpkg.com/@types/node-fetch/-/node-fetch-2.5.12.tgz -> @types-node-fetch-2.5.12.tgz
	https://registry.yarnpkg.com/@types/node-fetch/-/node-fetch-2.5.7.tgz -> @types-node-fetch-2.5.7.tgz
	https://registry.yarnpkg.com/@types/node-forge/-/node-forge-1.3.11.tgz -> @types-node-forge-1.3.11.tgz
	https://registry.yarnpkg.com/@types/node/-/node-10.12.21.tgz -> @types-node-10.12.21.tgz
	https://registry.yarnpkg.com/@types/node/-/node-18.15.3.tgz -> @types-node-18.15.3.tgz
	https://registry.yarnpkg.com/@types/node/-/node-20.11.24.tgz -> @types-node-20.11.24.tgz
	https://registry.yarnpkg.com/@types/node/-/node-20.12.11.tgz -> @types-node-20.12.11.tgz
	https://registry.yarnpkg.com/@types/node/-/node-20.12.5.tgz -> @types-node-20.12.5.tgz
	https://registry.yarnpkg.com/@types/node/-/node-20.14.13.tgz -> @types-node-20.14.13.tgz
	https://registry.yarnpkg.com/@types/node/-/node-6.0.78.tgz -> @types-node-6.0.78.tgz
	https://registry.yarnpkg.com/@types/picomatch/-/picomatch-2.3.0.tgz -> @types-picomatch-2.3.0.tgz
	https://registry.yarnpkg.com/@types/pump/-/pump-1.0.1.tgz -> @types-pump-1.0.1.tgz
	https://registry.yarnpkg.com/@types/randombytes/-/randombytes-2.0.0.tgz -> @types-randombytes-2.0.0.tgz
	https://registry.yarnpkg.com/@types/responselike/-/responselike-1.0.0.tgz -> @types-responselike-1.0.0.tgz
	https://registry.yarnpkg.com/@types/responselike/-/responselike-1.0.3.tgz -> @types-responselike-1.0.3.tgz
	https://registry.yarnpkg.com/@types/rimraf/-/rimraf-2.0.4.tgz -> @types-rimraf-2.0.4.tgz
	https://registry.yarnpkg.com/@types/rimraf/-/rimraf-3.0.2.tgz -> @types-rimraf-3.0.2.tgz
	https://registry.yarnpkg.com/@types/semver/-/semver-5.5.0.tgz -> @types-semver-5.5.0.tgz
	https://registry.yarnpkg.com/@types/semver/-/semver-7.5.8.tgz -> @types-semver-7.5.8.tgz
	https://registry.yarnpkg.com/@types/sha.js/-/sha.js-2.4.0.tgz -> @types-sha.js-2.4.0.tgz
	https://registry.yarnpkg.com/@types/sinon-test/-/sinon-test-2.4.2.tgz -> @types-sinon-test-2.4.2.tgz
	https://registry.yarnpkg.com/@types/sinon/-/sinon-10.0.2.tgz -> @types-sinon-10.0.2.tgz
	https://registry.yarnpkg.com/@types/svgo/-/svgo-1.3.6.tgz -> @types-svgo-1.3.6.tgz
	https://registry.yarnpkg.com/@types/through/-/through-0.0.29.tgz -> @types-through-0.0.29.tgz
	https://registry.yarnpkg.com/@types/through2/-/through2-2.0.36.tgz -> @types-through2-2.0.36.tgz
	https://registry.yarnpkg.com/@types/tmp/-/tmp-0.1.0.tgz -> @types-tmp-0.1.0.tgz
	https://registry.yarnpkg.com/@types/tmp/-/tmp-0.2.2.tgz -> @types-tmp-0.2.2.tgz
	https://registry.yarnpkg.com/@types/tough-cookie/-/tough-cookie-4.0.2.tgz -> @types-tough-cookie-4.0.2.tgz
	https://registry.yarnpkg.com/@types/trusted-types/-/trusted-types-1.0.6.tgz -> @types-trusted-types-1.0.6.tgz
	https://registry.yarnpkg.com/@types/trusted-types/-/trusted-types-2.0.2.tgz -> @types-trusted-types-2.0.2.tgz
	https://registry.yarnpkg.com/@types/tunnel/-/tunnel-0.0.3.tgz -> @types-tunnel-0.0.3.tgz
	https://registry.yarnpkg.com/@types/undertaker-registry/-/undertaker-registry-1.0.1.tgz -> @types-undertaker-registry-1.0.1.tgz
	https://registry.yarnpkg.com/@types/undertaker/-/undertaker-1.2.11.tgz -> @types-undertaker-1.2.11.tgz
	https://registry.yarnpkg.com/@types/uuid/-/uuid-8.0.0.tgz -> @types-uuid-8.0.0.tgz
	https://registry.yarnpkg.com/@types/vinyl-fs/-/vinyl-fs-2.4.9.tgz -> @types-vinyl-fs-2.4.9.tgz
	https://registry.yarnpkg.com/@types/vinyl/-/vinyl-2.0.12.tgz -> @types-vinyl-2.0.12.tgz
	https://registry.yarnpkg.com/@types/vscode-notebook-renderer/-/vscode-notebook-renderer-1.60.0.tgz -> @types-vscode-notebook-renderer-1.60.0.tgz
	https://registry.yarnpkg.com/@types/vscode-notebook-renderer/-/vscode-notebook-renderer-1.72.0.tgz -> @types-vscode-notebook-renderer-1.72.0.tgz
	https://registry.yarnpkg.com/@types/vscode-webview/-/vscode-webview-1.57.0.tgz -> @types-vscode-webview-1.57.0.tgz
	https://registry.yarnpkg.com/@types/webpack/-/webpack-5.28.5.tgz -> @types-webpack-5.28.5.tgz
	https://registry.yarnpkg.com/@types/which/-/which-2.0.0.tgz -> @types-which-2.0.0.tgz
	https://registry.yarnpkg.com/@types/which/-/which-3.0.0.tgz -> @types-which-3.0.0.tgz
	https://registry.yarnpkg.com/@types/wicg-file-system-access/-/wicg-file-system-access-2020.9.6.tgz -> @types-wicg-file-system-access-2020.9.6.tgz
	https://registry.yarnpkg.com/@types/windows-foreground-love/-/windows-foreground-love-0.3.0.tgz -> @types-windows-foreground-love-0.3.0.tgz
	https://registry.yarnpkg.com/@types/winreg/-/winreg-1.2.30.tgz -> @types-winreg-1.2.30.tgz
	https://registry.yarnpkg.com/@types/workerpool/-/workerpool-6.4.0.tgz -> @types-workerpool-6.4.0.tgz
	https://registry.yarnpkg.com/@types/xml2js/-/xml2js-0.0.33.tgz -> @types-xml2js-0.0.33.tgz
	https://registry.yarnpkg.com/@types/yauzl/-/yauzl-2.10.3.tgz -> @types-yauzl-2.10.3.tgz
	https://registry.yarnpkg.com/@types/yauzl/-/yauzl-2.9.2.tgz -> @types-yauzl-2.9.2.tgz
	https://registry.yarnpkg.com/@types/yazl/-/yazl-2.4.2.tgz -> @types-yazl-2.4.2.tgz
	https://registry.yarnpkg.com/@typescript-eslint/eslint-plugin/-/eslint-plugin-8.8.0.tgz -> @typescript-eslint-eslint-plugin-8.8.0.tgz
	https://registry.yarnpkg.com/@typescript-eslint/parser/-/parser-8.8.0.tgz -> @typescript-eslint-parser-8.8.0.tgz
	https://registry.yarnpkg.com/@typescript-eslint/scope-manager/-/scope-manager-8.8.0.tgz -> @typescript-eslint-scope-manager-8.8.0.tgz
	https://registry.yarnpkg.com/@typescript-eslint/type-utils/-/type-utils-8.8.0.tgz -> @typescript-eslint-type-utils-8.8.0.tgz
	https://registry.yarnpkg.com/@typescript-eslint/types/-/types-8.8.0.tgz -> @typescript-eslint-types-8.8.0.tgz
	https://registry.yarnpkg.com/@typescript-eslint/typescript-estree/-/typescript-estree-8.8.0.tgz -> @typescript-eslint-typescript-estree-8.8.0.tgz
	https://registry.yarnpkg.com/@typescript-eslint/utils/-/utils-8.8.0.tgz -> @typescript-eslint-utils-8.8.0.tgz
	https://registry.yarnpkg.com/@typescript-eslint/visitor-keys/-/visitor-keys-8.8.0.tgz -> @typescript-eslint-visitor-keys-8.8.0.tgz
	https://registry.yarnpkg.com/@vscode/deviceid/-/deviceid-0.1.1.tgz -> @vscode-deviceid-0.1.1.tgz
	https://registry.yarnpkg.com/@vscode/emmet-helper/-/emmet-helper-2.9.3.tgz -> @vscode-emmet-helper-2.9.3.tgz
	https://registry.yarnpkg.com/@vscode/extension-telemetry/-/extension-telemetry-0.9.0.tgz -> @vscode-extension-telemetry-0.9.0.tgz
	https://registry.yarnpkg.com/@vscode/gulp-electron/-/gulp-electron-1.36.0.tgz -> @vscode-gulp-electron-1.36.0.tgz
	https://registry.yarnpkg.com/@vscode/iconv-lite-umd/-/iconv-lite-umd-0.7.0.tgz -> @vscode-iconv-lite-umd-0.7.0.tgz
	https://registry.yarnpkg.com/@vscode/l10n-dev/-/l10n-dev-0.0.35.tgz -> @vscode-l10n-dev-0.0.35.tgz
	https://registry.yarnpkg.com/@vscode/l10n/-/l10n-0.0.10.tgz -> @vscode-l10n-0.0.10.tgz
	https://registry.yarnpkg.com/@vscode/l10n/-/l10n-0.0.11.tgz -> @vscode-l10n-0.0.11.tgz
	https://registry.yarnpkg.com/@vscode/l10n/-/l10n-0.0.18.tgz -> @vscode-l10n-0.0.18.tgz
	https://registry.yarnpkg.com/@vscode/markdown-it-katex/-/markdown-it-katex-1.0.2.tgz -> @vscode-markdown-it-katex-1.0.2.tgz
	https://registry.yarnpkg.com/@vscode/markdown-it-katex/-/markdown-it-katex-1.1.0.tgz -> @vscode-markdown-it-katex-1.1.0.tgz
	https://registry.yarnpkg.com/@vscode/policy-watcher/-/policy-watcher-1.1.8.tgz -> @vscode-policy-watcher-1.1.8.tgz
	https://registry.yarnpkg.com/@vscode/proxy-agent/-/proxy-agent-0.22.0.tgz -> @vscode-proxy-agent-0.22.0.tgz
	https://registry.yarnpkg.com/@vscode/ripgrep/-/ripgrep-1.15.9.tgz -> @vscode-ripgrep-1.15.9.tgz
	https://registry.yarnpkg.com/@vscode/spdlog/-/spdlog-0.15.0.tgz -> @vscode-spdlog-0.15.0.tgz
	https://registry.yarnpkg.com/@vscode/sqlite3/-/sqlite3-5.1.8-vscode.tgz -> @vscode-sqlite3-5.1.8-vscode.tgz
	https://registry.yarnpkg.com/@vscode/sudo-prompt/-/sudo-prompt-9.3.1.tgz -> @vscode-sudo-prompt-9.3.1.tgz
	https://registry.yarnpkg.com/@vscode/sync-api-client/-/sync-api-client-0.7.2.tgz -> @vscode-sync-api-client-0.7.2.tgz
	https://registry.yarnpkg.com/@vscode/sync-api-common/-/sync-api-common-0.7.2.tgz -> @vscode-sync-api-common-0.7.2.tgz
	https://registry.yarnpkg.com/@vscode/sync-api-service/-/sync-api-service-0.7.3.tgz -> @vscode-sync-api-service-0.7.3.tgz
	https://registry.yarnpkg.com/@vscode/telemetry-extractor/-/telemetry-extractor-1.10.2.tgz -> @vscode-telemetry-extractor-1.10.2.tgz
	https://registry.yarnpkg.com/@vscode/test-cli/-/test-cli-0.0.6.tgz -> @vscode-test-cli-0.0.6.tgz
	https://registry.yarnpkg.com/@vscode/test-electron/-/test-electron-2.4.0.tgz -> @vscode-test-electron-2.4.0.tgz
	https://registry.yarnpkg.com/@vscode/test-web/-/test-web-0.0.62.tgz -> @vscode-test-web-0.0.62.tgz
	https://registry.yarnpkg.com/@vscode/tree-sitter-wasm/-/tree-sitter-wasm-0.0.4.tgz -> @vscode-tree-sitter-wasm-0.0.4.tgz
	https://registry.yarnpkg.com/@vscode/ts-package-manager/-/ts-package-manager-0.0.2.tgz -> @vscode-ts-package-manager-0.0.2.tgz
	https://registry.yarnpkg.com/@vscode/v8-heap-parser/-/v8-heap-parser-0.1.0.tgz -> @vscode-v8-heap-parser-0.1.0.tgz
	https://registry.yarnpkg.com/@vscode/vsce/-/vsce-2.20.1.tgz -> @vscode-vsce-2.20.1.tgz
	https://registry.yarnpkg.com/@vscode/vscode-languagedetection/-/vscode-languagedetection-1.0.21.tgz -> @vscode-vscode-languagedetection-1.0.21.tgz
	https://registry.yarnpkg.com/@vscode/vscode-perf/-/vscode-perf-0.0.19.tgz -> @vscode-vscode-perf-0.0.19.tgz
	https://registry.yarnpkg.com/@vscode/windows-ca-certs/-/windows-ca-certs-0.3.3.tgz -> @vscode-windows-ca-certs-0.3.3.tgz
	https://registry.yarnpkg.com/@vscode/windows-mutex/-/windows-mutex-0.5.0.tgz -> @vscode-windows-mutex-0.5.0.tgz
	https://registry.yarnpkg.com/@vscode/windows-process-tree/-/windows-process-tree-0.6.0.tgz -> @vscode-windows-process-tree-0.6.0.tgz
	https://registry.yarnpkg.com/@vscode/windows-registry/-/windows-registry-1.1.0.tgz -> @vscode-windows-registry-1.1.0.tgz
	https://registry.yarnpkg.com/@webassemblyjs/ast/-/ast-1.12.1.tgz -> @webassemblyjs-ast-1.12.1.tgz
	https://registry.yarnpkg.com/@webassemblyjs/floating-point-hex-parser/-/floating-point-hex-parser-1.11.6.tgz -> @webassemblyjs-floating-point-hex-parser-1.11.6.tgz
	https://registry.yarnpkg.com/@webassemblyjs/helper-api-error/-/helper-api-error-1.11.6.tgz -> @webassemblyjs-helper-api-error-1.11.6.tgz
	https://registry.yarnpkg.com/@webassemblyjs/helper-buffer/-/helper-buffer-1.12.1.tgz -> @webassemblyjs-helper-buffer-1.12.1.tgz
	https://registry.yarnpkg.com/@webassemblyjs/helper-numbers/-/helper-numbers-1.11.6.tgz -> @webassemblyjs-helper-numbers-1.11.6.tgz
	https://registry.yarnpkg.com/@webassemblyjs/helper-wasm-bytecode/-/helper-wasm-bytecode-1.11.6.tgz -> @webassemblyjs-helper-wasm-bytecode-1.11.6.tgz
	https://registry.yarnpkg.com/@webassemblyjs/helper-wasm-section/-/helper-wasm-section-1.12.1.tgz -> @webassemblyjs-helper-wasm-section-1.12.1.tgz
	https://registry.yarnpkg.com/@webassemblyjs/ieee754/-/ieee754-1.11.6.tgz -> @webassemblyjs-ieee754-1.11.6.tgz
	https://registry.yarnpkg.com/@webassemblyjs/leb128/-/leb128-1.11.6.tgz -> @webassemblyjs-leb128-1.11.6.tgz
	https://registry.yarnpkg.com/@webassemblyjs/utf8/-/utf8-1.11.6.tgz -> @webassemblyjs-utf8-1.11.6.tgz
	https://registry.yarnpkg.com/@webassemblyjs/wasm-edit/-/wasm-edit-1.12.1.tgz -> @webassemblyjs-wasm-edit-1.12.1.tgz
	https://registry.yarnpkg.com/@webassemblyjs/wasm-gen/-/wasm-gen-1.12.1.tgz -> @webassemblyjs-wasm-gen-1.12.1.tgz
	https://registry.yarnpkg.com/@webassemblyjs/wasm-opt/-/wasm-opt-1.12.1.tgz -> @webassemblyjs-wasm-opt-1.12.1.tgz
	https://registry.yarnpkg.com/@webassemblyjs/wasm-parser/-/wasm-parser-1.12.1.tgz -> @webassemblyjs-wasm-parser-1.12.1.tgz
	https://registry.yarnpkg.com/@webassemblyjs/wast-printer/-/wast-printer-1.12.1.tgz -> @webassemblyjs-wast-printer-1.12.1.tgz
	https://registry.yarnpkg.com/@webgpu/types/-/types-0.1.44.tgz -> @webgpu-types-0.1.44.tgz
	https://registry.yarnpkg.com/@webpack-cli/configtest/-/configtest-2.1.1.tgz -> @webpack-cli-configtest-2.1.1.tgz
	https://registry.yarnpkg.com/@webpack-cli/info/-/info-2.0.2.tgz -> @webpack-cli-info-2.0.2.tgz
	https://registry.yarnpkg.com/@webpack-cli/serve/-/serve-2.0.5.tgz -> @webpack-cli-serve-2.0.5.tgz
	https://registry.yarnpkg.com/@xmldom/xmldom/-/xmldom-0.8.10.tgz -> @xmldom-xmldom-0.8.10.tgz
	https://registry.yarnpkg.com/@xterm/addon-clipboard/-/addon-clipboard-0.2.0-beta.48.tgz -> @xterm-addon-clipboard-0.2.0-beta.48.tgz
	https://registry.yarnpkg.com/@xterm/addon-image/-/addon-image-0.9.0-beta.65.tgz -> @xterm-addon-image-0.9.0-beta.65.tgz
	https://registry.yarnpkg.com/@xterm/addon-search/-/addon-search-0.16.0-beta.65.tgz -> @xterm-addon-search-0.16.0-beta.65.tgz
	https://registry.yarnpkg.com/@xterm/addon-serialize/-/addon-serialize-0.14.0-beta.65.tgz -> @xterm-addon-serialize-0.14.0-beta.65.tgz
	https://registry.yarnpkg.com/@xterm/addon-unicode11/-/addon-unicode11-0.9.0-beta.65.tgz -> @xterm-addon-unicode11-0.9.0-beta.65.tgz
	https://registry.yarnpkg.com/@xterm/addon-webgl/-/addon-webgl-0.19.0-beta.65.tgz -> @xterm-addon-webgl-0.19.0-beta.65.tgz
	https://registry.yarnpkg.com/@xterm/headless/-/headless-5.6.0-beta.65.tgz -> @xterm-headless-5.6.0-beta.65.tgz
	https://registry.yarnpkg.com/@xterm/xterm/-/xterm-5.6.0-beta.65.tgz -> @xterm-xterm-5.6.0-beta.65.tgz
	https://registry.yarnpkg.com/@xtuc/ieee754/-/ieee754-1.2.0.tgz -> @xtuc-ieee754-1.2.0.tgz
	https://registry.yarnpkg.com/@xtuc/long/-/long-4.2.2.tgz -> @xtuc-long-4.2.2.tgz
	https://registry.yarnpkg.com/abab/-/abab-2.0.6.tgz
	https://registry.yarnpkg.com/abbrev/-/abbrev-1.1.1.tgz
	https://registry.yarnpkg.com/abbrev/-/abbrev-2.0.0.tgz
	https://registry.yarnpkg.com/accepts/-/accepts-1.3.7.tgz
	https://registry.yarnpkg.com/acorn-globals/-/acorn-globals-7.0.1.tgz
	https://registry.yarnpkg.com/acorn-import-attributes/-/acorn-import-attributes-1.9.5.tgz
	https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-5.3.2.tgz
	https://registry.yarnpkg.com/acorn-walk/-/acorn-walk-8.2.0.tgz
	https://registry.yarnpkg.com/acorn/-/acorn-6.4.2.tgz
	https://registry.yarnpkg.com/acorn/-/acorn-8.12.1.tgz
	https://registry.yarnpkg.com/acorn/-/acorn-8.8.2.tgz
	https://registry.yarnpkg.com/agent-base/-/agent-base-6.0.2.tgz
	https://registry.yarnpkg.com/agent-base/-/agent-base-7.1.1.tgz
	https://registry.yarnpkg.com/aggregate-error/-/aggregate-error-3.1.0.tgz
	https://registry.yarnpkg.com/ajv-formats/-/ajv-formats-2.1.1.tgz
	https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-3.5.2.tgz
	https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-5.1.0.tgz
	https://registry.yarnpkg.com/ajv/-/ajv-6.12.6.tgz
	https://registry.yarnpkg.com/ajv/-/ajv-8.12.0.tgz
	https://registry.yarnpkg.com/amdefine/-/amdefine-1.0.1.tgz
	https://registry.yarnpkg.com/ansi-colors/-/ansi-colors-1.1.0.tgz
	https://registry.yarnpkg.com/ansi-colors/-/ansi-colors-3.2.3.tgz
	https://registry.yarnpkg.com/ansi-colors/-/ansi-colors-4.1.1.tgz
	https://registry.yarnpkg.com/ansi-cyan/-/ansi-cyan-0.1.1.tgz
	https://registry.yarnpkg.com/ansi-gray/-/ansi-gray-0.1.1.tgz
	https://registry.yarnpkg.com/ansi-red/-/ansi-red-0.1.1.tgz
	https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-2.1.1.tgz
	https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-5.0.1.tgz
	https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-6.0.1.tgz
	https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.2.1.tgz
	https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.1.tgz
	https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-4.2.1.tgz
	https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-4.3.0.tgz
	https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-5.2.0.tgz
	https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-6.2.1.tgz
	https://registry.yarnpkg.com/ansi-wrap/-/ansi-wrap-0.1.0.tgz
	https://registry.yarnpkg.com/any-promise/-/any-promise-1.3.0.tgz
	https://registry.yarnpkg.com/anymatch/-/anymatch-2.0.0.tgz
	https://registry.yarnpkg.com/anymatch/-/anymatch-3.1.2.tgz
	https://registry.yarnpkg.com/anymatch/-/anymatch-3.1.3.tgz
	https://registry.yarnpkg.com/append-buffer/-/append-buffer-1.0.2.tgz
	https://registry.yarnpkg.com/archy/-/archy-1.0.0.tgz
	https://registry.yarnpkg.com/are-docs-informative/-/are-docs-informative-0.0.2.tgz
	https://registry.yarnpkg.com/arg/-/arg-4.1.3.tgz
	https://registry.yarnpkg.com/argparse/-/argparse-1.0.9.tgz
	https://registry.yarnpkg.com/argparse/-/argparse-2.0.1.tgz
	https://registry.yarnpkg.com/arr-diff/-/arr-diff-1.1.0.tgz
	https://registry.yarnpkg.com/arr-diff/-/arr-diff-4.0.0.tgz
	https://registry.yarnpkg.com/arr-filter/-/arr-filter-1.1.2.tgz
	https://registry.yarnpkg.com/arr-flatten/-/arr-flatten-1.1.0.tgz
	https://registry.yarnpkg.com/arr-map/-/arr-map-2.0.2.tgz
	https://registry.yarnpkg.com/arr-union/-/arr-union-2.1.0.tgz
	https://registry.yarnpkg.com/arr-union/-/arr-union-3.1.0.tgz
	https://registry.yarnpkg.com/array-back/-/array-back-3.1.0.tgz
	https://registry.yarnpkg.com/array-differ/-/array-differ-1.0.0.tgz
	https://registry.yarnpkg.com/array-each/-/array-each-1.0.1.tgz
	https://registry.yarnpkg.com/array-initial/-/array-initial-1.1.0.tgz
	https://registry.yarnpkg.com/array-last/-/array-last-1.3.0.tgz
	https://registry.yarnpkg.com/array-slice/-/array-slice-0.2.3.tgz
	https://registry.yarnpkg.com/array-slice/-/array-slice-1.1.0.tgz
	https://registry.yarnpkg.com/array-sort/-/array-sort-1.0.0.tgz
	https://registry.yarnpkg.com/array-union/-/array-union-1.0.2.tgz
	https://registry.yarnpkg.com/array-uniq/-/array-uniq-1.0.3.tgz
	https://registry.yarnpkg.com/array-unique/-/array-unique-0.3.2.tgz
	https://registry.yarnpkg.com/arrify/-/arrify-1.0.1.tgz
	https://registry.yarnpkg.com/asar/-/asar-3.0.3.tgz
	https://registry.yarnpkg.com/assertion-error/-/assertion-error-1.1.0.tgz
	https://registry.yarnpkg.com/assign-symbols/-/assign-symbols-1.0.0.tgz
	https://registry.yarnpkg.com/async-done/-/async-done-1.3.2.tgz
	https://registry.yarnpkg.com/async-each/-/async-each-1.0.3.tgz
	https://registry.yarnpkg.com/async-settle/-/async-settle-1.0.0.tgz
	https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz
	https://registry.yarnpkg.com/at-least-node/-/at-least-node-1.0.0.tgz
	https://registry.yarnpkg.com/atob/-/atob-2.1.2.tgz
	https://registry.yarnpkg.com/available-typed-arrays/-/available-typed-arrays-1.0.5.tgz
	https://registry.yarnpkg.com/azure-devops-node-api/-/azure-devops-node-api-11.2.0.tgz
	https://registry.yarnpkg.com/b4a/-/b4a-1.6.4.tgz
	https://registry.yarnpkg.com/bach/-/bach-1.2.0.tgz
	https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz
	https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.2.tgz
	https://registry.yarnpkg.com/bare-events/-/bare-events-2.4.2.tgz
	https://registry.yarnpkg.com/bare-fs/-/bare-fs-2.3.1.tgz
	https://registry.yarnpkg.com/bare-os/-/bare-os-2.4.0.tgz
	https://registry.yarnpkg.com/bare-path/-/bare-path-2.1.3.tgz
	https://registry.yarnpkg.com/bare-stream/-/bare-stream-2.1.3.tgz
	https://registry.yarnpkg.com/base/-/base-0.11.2.tgz
	https://registry.yarnpkg.com/base64-js/-/base64-js-1.5.1.tgz
	https://registry.yarnpkg.com/basic-auth/-/basic-auth-2.0.1.tgz
	https://registry.yarnpkg.com/before-after-hook/-/before-after-hook-2.2.2.tgz
	https://registry.yarnpkg.com/before-after-hook/-/before-after-hook-2.2.3.tgz
	https://registry.yarnpkg.com/big.js/-/big.js-5.2.2.tgz
	https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-1.13.1.tgz
	https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-2.2.0.tgz
	https://registry.yarnpkg.com/binaryextensions/-/binaryextensions-1.0.1.tgz
	https://registry.yarnpkg.com/bindings/-/bindings-1.5.0.tgz
	https://registry.yarnpkg.com/bl/-/bl-4.1.0.tgz
	https://registry.yarnpkg.com/bl/-/bl-5.1.0.tgz
	https://registry.yarnpkg.com/block-stream/-/block-stream-0.0.9.tgz
	https://registry.yarnpkg.com/bluebird/-/bluebird-3.7.2.tgz
	https://registry.yarnpkg.com/boolbase/-/boolbase-1.0.0.tgz
	https://registry.yarnpkg.com/boolean/-/boolean-3.0.2.tgz
	https://registry.yarnpkg.com/boolean/-/boolean-3.1.2.tgz
	https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz
	https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-2.0.1.tgz
	https://registry.yarnpkg.com/braces/-/braces-2.3.2.tgz
	https://registry.yarnpkg.com/braces/-/braces-3.0.3.tgz
	https://registry.yarnpkg.com/browser-stdout/-/browser-stdout-1.3.1.tgz
	https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.1.4.tgz
	https://registry.yarnpkg.com/browserslist/-/browserslist-4.24.0.tgz
	https://registry.yarnpkg.com/buffer-alloc-unsafe/-/buffer-alloc-unsafe-1.1.0.tgz
	https://registry.yarnpkg.com/buffer-alloc/-/buffer-alloc-1.2.0.tgz
	https://registry.yarnpkg.com/buffer-crc32/-/buffer-crc32-0.2.13.tgz
	https://registry.yarnpkg.com/buffer-equal-constant-time/-/buffer-equal-constant-time-1.0.1.tgz
	https://registry.yarnpkg.com/buffer-equal/-/buffer-equal-1.0.0.tgz
	https://registry.yarnpkg.com/buffer-fill/-/buffer-fill-1.0.0.tgz
	https://registry.yarnpkg.com/buffer-from/-/buffer-from-1.1.2.tgz
	https://registry.yarnpkg.com/buffer/-/buffer-5.7.1.tgz
	https://registry.yarnpkg.com/buffer/-/buffer-6.0.3.tgz
	https://registry.yarnpkg.com/byline/-/byline-5.0.0.tgz
	https://registry.yarnpkg.com/bytes/-/bytes-3.1.2.tgz
	https://registry.yarnpkg.com/c8/-/c8-9.1.0.tgz
	https://registry.yarnpkg.com/cacache/-/cacache-18.0.3.tgz
	https://registry.yarnpkg.com/cache-base/-/cache-base-1.0.1.tgz
	https://registry.yarnpkg.com/cache-content-type/-/cache-content-type-1.0.1.tgz
	https://registry.yarnpkg.com/cacheable-lookup/-/cacheable-lookup-5.0.4.tgz
	https://registry.yarnpkg.com/cacheable-request/-/cacheable-request-7.0.2.tgz
	https://registry.yarnpkg.com/cacheable-request/-/cacheable-request-7.0.4.tgz
	https://registry.yarnpkg.com/call-bind/-/call-bind-1.0.0.tgz
	https://registry.yarnpkg.com/call-bind/-/call-bind-1.0.7.tgz
	https://registry.yarnpkg.com/callsites/-/callsites-3.1.0.tgz
	https://registry.yarnpkg.com/camelcase/-/camelcase-3.0.0.tgz
	https://registry.yarnpkg.com/camelcase/-/camelcase-5.3.1.tgz
	https://registry.yarnpkg.com/camelcase/-/camelcase-6.3.0.tgz
	https://registry.yarnpkg.com/caniuse-api/-/caniuse-api-3.0.0.tgz
	https://registry.yarnpkg.com/caniuse-lite/-/caniuse-lite-1.0.30001667.tgz
	https://registry.yarnpkg.com/chai/-/chai-4.2.0.tgz
	https://registry.yarnpkg.com/chalk/-/chalk-1.1.3.tgz
	https://registry.yarnpkg.com/chalk/-/chalk-2.4.2.tgz
	https://registry.yarnpkg.com/chalk/-/chalk-4.1.2.tgz
	https://registry.yarnpkg.com/chalk/-/chalk-5.3.0.tgz
	https://registry.yarnpkg.com/charenc/-/charenc-0.0.2.tgz
	https://registry.yarnpkg.com/check-error/-/check-error-1.0.2.tgz
	https://registry.yarnpkg.com/cheerio-select/-/cheerio-select-2.1.0.tgz
	https://registry.yarnpkg.com/cheerio/-/cheerio-1.0.0-rc.12.tgz
	https://registry.yarnpkg.com/chokidar/-/chokidar-2.1.8.tgz
	https://registry.yarnpkg.com/chokidar/-/chokidar-3.5.1.tgz
	https://registry.yarnpkg.com/chokidar/-/chokidar-3.5.3.tgz
	https://registry.yarnpkg.com/chownr/-/chownr-1.1.4.tgz
	https://registry.yarnpkg.com/chownr/-/chownr-2.0.0.tgz
	https://registry.yarnpkg.com/chrome-remote-interface/-/chrome-remote-interface-0.33.0.tgz
	https://registry.yarnpkg.com/chrome-trace-event/-/chrome-trace-event-1.0.2.tgz
	https://registry.yarnpkg.com/chromium-pickle-js/-/chromium-pickle-js-0.2.0.tgz
	https://registry.yarnpkg.com/ci-info/-/ci-info-1.6.0.tgz
	https://registry.yarnpkg.com/class-utils/-/class-utils-0.3.6.tgz
	https://registry.yarnpkg.com/clean-stack/-/clean-stack-2.2.0.tgz
	https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-4.0.0.tgz
	https://registry.yarnpkg.com/cli-spinners/-/cli-spinners-2.9.2.tgz
	https://registry.yarnpkg.com/cliui/-/cliui-3.2.0.tgz
	https://registry.yarnpkg.com/cliui/-/cliui-6.0.0.tgz
	https://registry.yarnpkg.com/cliui/-/cliui-7.0.4.tgz
	https://registry.yarnpkg.com/cliui/-/cliui-8.0.1.tgz
	https://registry.yarnpkg.com/clone-buffer/-/clone-buffer-1.0.0.tgz
	https://registry.yarnpkg.com/clone-deep/-/clone-deep-4.0.1.tgz
	https://registry.yarnpkg.com/clone-response/-/clone-response-1.0.2.tgz
	https://registry.yarnpkg.com/clone-stats/-/clone-stats-0.0.1.tgz
	https://registry.yarnpkg.com/clone-stats/-/clone-stats-1.0.0.tgz
	https://registry.yarnpkg.com/clone/-/clone-1.0.4.tgz
	https://registry.yarnpkg.com/clone/-/clone-2.1.2.tgz
	https://registry.yarnpkg.com/cloneable-readable/-/cloneable-readable-1.1.3.tgz
	https://registry.yarnpkg.com/co/-/co-4.6.0.tgz
	https://registry.yarnpkg.com/cockatiel/-/cockatiel-3.1.3.tgz
	https://registry.yarnpkg.com/code-block-writer/-/code-block-writer-12.0.0.tgz
	https://registry.yarnpkg.com/code-point-at/-/code-point-at-1.1.0.tgz
	https://registry.yarnpkg.com/coffeescript/-/coffeescript-1.12.7.tgz
	https://registry.yarnpkg.com/collection-map/-/collection-map-1.0.0.tgz
	https://registry.yarnpkg.com/collection-visit/-/collection-visit-1.0.0.tgz
	https://registry.yarnpkg.com/color-convert/-/color-convert-1.9.3.tgz
	https://registry.yarnpkg.com/color-convert/-/color-convert-2.0.1.tgz
	https://registry.yarnpkg.com/color-name/-/color-name-1.1.3.tgz
	https://registry.yarnpkg.com/color-name/-/color-name-1.1.4.tgz
	https://registry.yarnpkg.com/color-support/-/color-support-1.1.3.tgz
	https://registry.yarnpkg.com/colord/-/colord-2.9.3.tgz
	https://registry.yarnpkg.com/colorette/-/colorette-2.0.19.tgz
	https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.8.tgz
	https://registry.yarnpkg.com/command-line-args/-/command-line-args-5.2.1.tgz
	https://registry.yarnpkg.com/commander/-/commander-10.0.1.tgz
	https://registry.yarnpkg.com/commander/-/commander-2.11.0.tgz
	https://registry.yarnpkg.com/commander/-/commander-2.20.3.tgz
	https://registry.yarnpkg.com/commander/-/commander-5.1.0.tgz
	https://registry.yarnpkg.com/commander/-/commander-6.2.1.tgz
	https://registry.yarnpkg.com/commander/-/commander-7.2.0.tgz
	https://registry.yarnpkg.com/commander/-/commander-8.3.0.tgz
	https://registry.yarnpkg.com/commander/-/commander-9.5.0.tgz
	https://registry.yarnpkg.com/comment-parser/-/comment-parser-1.4.1.tgz
	https://registry.yarnpkg.com/compare-version/-/compare-version-0.1.2.tgz
	https://registry.yarnpkg.com/component-emitter/-/component-emitter-1.3.0.tgz
	https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz
	https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.2.tgz
	https://registry.yarnpkg.com/config-chain/-/config-chain-1.1.12.tgz
	https://registry.yarnpkg.com/content-disposition/-/content-disposition-0.5.4.tgz
	https://registry.yarnpkg.com/content-type/-/content-type-1.0.5.tgz
	https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.7.0.tgz
	https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-2.0.0.tgz
	https://registry.yarnpkg.com/cookie/-/cookie-0.7.2.tgz
	https://registry.yarnpkg.com/cookies/-/cookies-0.9.1.tgz
	https://registry.yarnpkg.com/copy-descriptor/-/copy-descriptor-0.1.1.tgz
	https://registry.yarnpkg.com/copy-props/-/copy-props-2.0.5.tgz
	https://registry.yarnpkg.com/copy-webpack-plugin/-/copy-webpack-plugin-11.0.0.tgz
	https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz
	https://registry.yarnpkg.com/cpx2/-/cpx2-3.0.0.tgz
	https://registry.yarnpkg.com/create-require/-/create-require-1.1.1.tgz
	https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-6.0.5.tgz
	https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-7.0.3.tgz
	https://registry.yarnpkg.com/crypt/-/crypt-0.0.2.tgz
	https://registry.yarnpkg.com/cson-parser/-/cson-parser-4.0.9.tgz
	https://registry.yarnpkg.com/css-declaration-sorter/-/css-declaration-sorter-7.2.0.tgz
	https://registry.yarnpkg.com/css-loader/-/css-loader-6.9.1.tgz
	https://registry.yarnpkg.com/css-select/-/css-select-4.2.1.tgz
	https://registry.yarnpkg.com/css-select/-/css-select-5.1.0.tgz
	https://registry.yarnpkg.com/css-tree/-/css-tree-1.1.3.tgz
	https://registry.yarnpkg.com/css-tree/-/css-tree-2.2.1.tgz
	https://registry.yarnpkg.com/css-tree/-/css-tree-2.3.1.tgz
	https://registry.yarnpkg.com/css-what/-/css-what-5.1.0.tgz
	https://registry.yarnpkg.com/css-what/-/css-what-6.1.0.tgz
	https://registry.yarnpkg.com/css/-/css-3.0.0.tgz
	https://registry.yarnpkg.com/cssesc/-/cssesc-3.0.0.tgz
	https://registry.yarnpkg.com/cssnano-preset-default/-/cssnano-preset-default-6.1.2.tgz
	https://registry.yarnpkg.com/cssnano-utils/-/cssnano-utils-4.0.2.tgz
	https://registry.yarnpkg.com/cssnano/-/cssnano-6.1.2.tgz
	https://registry.yarnpkg.com/csso/-/csso-4.2.0.tgz
	https://registry.yarnpkg.com/csso/-/csso-5.0.5.tgz
	https://registry.yarnpkg.com/cssstyle/-/cssstyle-3.0.0.tgz
	https://registry.yarnpkg.com/d/-/d-1.0.1.tgz
	https://registry.yarnpkg.com/data-urls/-/data-urls-4.0.0.tgz
	https://registry.yarnpkg.com/debounce/-/debounce-1.1.0.tgz
	https://registry.yarnpkg.com/debounce/-/debounce-1.2.1.tgz
	https://registry.yarnpkg.com/debug-fabulous/-/debug-fabulous-1.1.0.tgz
	https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz
	https://registry.yarnpkg.com/debug/-/debug-3.2.7.tgz
	https://registry.yarnpkg.com/debug/-/debug-4.3.4.tgz
	https://registry.yarnpkg.com/debug/-/debug-4.3.5.tgz
	https://registry.yarnpkg.com/debug/-/debug-4.3.7.tgz
	https://registry.yarnpkg.com/decamelize/-/decamelize-1.2.0.tgz
	https://registry.yarnpkg.com/decamelize/-/decamelize-4.0.0.tgz
	https://registry.yarnpkg.com/decimal.js/-/decimal.js-10.4.3.tgz
	https://registry.yarnpkg.com/decode-uri-component/-/decode-uri-component-0.2.2.tgz
	https://registry.yarnpkg.com/decompress-response/-/decompress-response-6.0.0.tgz
	https://registry.yarnpkg.com/deemon/-/deemon-1.8.0.tgz
	https://registry.yarnpkg.com/deep-eql/-/deep-eql-3.0.1.tgz
	https://registry.yarnpkg.com/deep-equal/-/deep-equal-1.0.1.tgz
	https://registry.yarnpkg.com/deep-extend/-/deep-extend-0.6.0.tgz
	https://registry.yarnpkg.com/deep-is/-/deep-is-0.1.4.tgz
	https://registry.yarnpkg.com/deepmerge-json/-/deepmerge-json-1.5.0.tgz
	https://registry.yarnpkg.com/deepmerge/-/deepmerge-3.1.0.tgz
	https://registry.yarnpkg.com/default-compare/-/default-compare-1.0.0.tgz
	https://registry.yarnpkg.com/default-resolution/-/default-resolution-2.0.0.tgz
	https://registry.yarnpkg.com/defer-to-connect/-/defer-to-connect-2.0.1.tgz
	https://registry.yarnpkg.com/define-data-property/-/define-data-property-1.1.4.tgz
	https://registry.yarnpkg.com/define-lazy-prop/-/define-lazy-prop-2.0.0.tgz
	https://registry.yarnpkg.com/define-properties/-/define-properties-1.1.3.tgz
	https://registry.yarnpkg.com/define-property/-/define-property-0.2.5.tgz
	https://registry.yarnpkg.com/define-property/-/define-property-1.0.0.tgz
	https://registry.yarnpkg.com/define-property/-/define-property-2.0.2.tgz
	https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-0.0.6.tgz
	https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz
	https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz
	https://registry.yarnpkg.com/depd/-/depd-1.1.2.tgz
	https://registry.yarnpkg.com/depd/-/depd-2.0.0.tgz
	https://registry.yarnpkg.com/deprecation/-/deprecation-2.3.1.tgz
	https://registry.yarnpkg.com/destroy/-/destroy-1.2.0.tgz
	https://registry.yarnpkg.com/detect-file/-/detect-file-1.0.0.tgz
	https://registry.yarnpkg.com/detect-indent/-/detect-indent-5.0.0.tgz
	https://registry.yarnpkg.com/detect-indent/-/detect-indent-6.1.0.tgz
	https://registry.yarnpkg.com/detect-libc/-/detect-libc-2.0.1.tgz
	https://registry.yarnpkg.com/detect-newline/-/detect-newline-2.1.0.tgz
	https://registry.yarnpkg.com/detect-node/-/detect-node-2.0.4.tgz
	https://registry.yarnpkg.com/detect-node/-/detect-node-2.1.0.tgz
	https://registry.yarnpkg.com/diff/-/diff-4.0.2.tgz
	https://registry.yarnpkg.com/diff/-/diff-5.0.0.tgz
	https://registry.yarnpkg.com/dir-compare/-/dir-compare-4.2.0.tgz
	https://registry.yarnpkg.com/dir-glob/-/dir-glob-3.0.1.tgz
	https://registry.yarnpkg.com/dom-serializer/-/dom-serializer-1.3.2.tgz
	https://registry.yarnpkg.com/dom-serializer/-/dom-serializer-2.0.0.tgz
	https://registry.yarnpkg.com/domelementtype/-/domelementtype-2.3.0.tgz
	https://registry.yarnpkg.com/domexception/-/domexception-4.0.0.tgz
	https://registry.yarnpkg.com/domhandler/-/domhandler-4.3.0.tgz
	https://registry.yarnpkg.com/domhandler/-/domhandler-5.0.3.tgz
	https://registry.yarnpkg.com/dompurify/-/dompurify-3.1.7.tgz
	https://registry.yarnpkg.com/domutils/-/domutils-2.8.0.tgz
	https://registry.yarnpkg.com/domutils/-/domutils-3.0.1.tgz
	https://registry.yarnpkg.com/domutils/-/domutils-3.1.0.tgz
	https://registry.yarnpkg.com/duplexer/-/duplexer-0.1.1.tgz
	https://registry.yarnpkg.com/duplexer/-/duplexer-0.1.2.tgz
	https://registry.yarnpkg.com/duplexify/-/duplexify-3.7.1.tgz
	https://registry.yarnpkg.com/duplexify/-/duplexify-4.1.2.tgz
	https://registry.yarnpkg.com/each-props/-/each-props-1.3.2.tgz
	https://registry.yarnpkg.com/eastasianwidth/-/eastasianwidth-0.2.0.tgz
	https://registry.yarnpkg.com/ecdsa-sig-formatter/-/ecdsa-sig-formatter-1.0.11.tgz
	https://registry.yarnpkg.com/editorconfig/-/editorconfig-0.15.2.tgz
	https://registry.yarnpkg.com/ee-first/-/ee-first-1.1.1.tgz
	https://registry.yarnpkg.com/electron-osx-sign/-/electron-osx-sign-0.4.16.tgz
	https://registry.yarnpkg.com/electron-to-chromium/-/electron-to-chromium-1.5.32.tgz
	https://registry.yarnpkg.com/electron/-/electron-32.2.1.tgz
	https://registry.yarnpkg.com/emmet/-/emmet-2.4.7.tgz
	https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-10.3.0.tgz
	https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-8.0.0.tgz
	https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-9.2.2.tgz
	https://registry.yarnpkg.com/emojis-list/-/emojis-list-3.0.0.tgz
	https://registry.yarnpkg.com/encodeurl/-/encodeurl-1.0.2.tgz
	https://registry.yarnpkg.com/encoding/-/encoding-0.1.13.tgz
	https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.4.4.tgz
	https://registry.yarnpkg.com/enhanced-resolve/-/enhanced-resolve-5.17.1.tgz
	https://registry.yarnpkg.com/entities/-/entities-2.1.0.tgz
	https://registry.yarnpkg.com/entities/-/entities-4.4.0.tgz
	https://registry.yarnpkg.com/entities/-/entities-4.5.0.tgz
	https://registry.yarnpkg.com/env-paths/-/env-paths-2.2.0.tgz
	https://registry.yarnpkg.com/env-paths/-/env-paths-2.2.1.tgz
	https://registry.yarnpkg.com/envinfo/-/envinfo-7.8.1.tgz
	https://registry.yarnpkg.com/err-code/-/err-code-2.0.3.tgz
	https://registry.yarnpkg.com/errno/-/errno-0.1.8.tgz
	https://registry.yarnpkg.com/error-ex/-/error-ex-1.3.2.tgz
	https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.18.0-next.1.tgz
	https://registry.yarnpkg.com/es-define-property/-/es-define-property-1.0.0.tgz
	https://registry.yarnpkg.com/es-errors/-/es-errors-1.3.0.tgz
	https://registry.yarnpkg.com/es-module-lexer/-/es-module-lexer-1.5.4.tgz
	https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.2.1.tgz
	https://registry.yarnpkg.com/es5-ext/-/es5-ext-0.10.63.tgz
	https://registry.yarnpkg.com/es6-error/-/es6-error-4.1.1.tgz
	https://registry.yarnpkg.com/es6-iterator/-/es6-iterator-2.0.3.tgz
	https://registry.yarnpkg.com/es6-symbol/-/es6-symbol-3.1.3.tgz
	https://registry.yarnpkg.com/es6-weak-map/-/es6-weak-map-2.0.3.tgz
	https://registry.yarnpkg.com/esbuild/-/esbuild-0.23.0.tgz
	https://registry.yarnpkg.com/escalade/-/escalade-3.1.2.tgz
	https://registry.yarnpkg.com/escalade/-/escalade-3.2.0.tgz
	https://registry.yarnpkg.com/escape-html/-/escape-html-1.0.3.tgz
	https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz
	https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-4.0.0.tgz
	https://registry.yarnpkg.com/escodegen/-/escodegen-2.0.0.tgz
	https://registry.yarnpkg.com/eslint-formatter-compact/-/eslint-formatter-compact-8.40.0.tgz
	https://registry.yarnpkg.com/eslint-plugin-header/-/eslint-plugin-header-3.1.1.tgz
	https://registry.yarnpkg.com/eslint-plugin-jsdoc/-/eslint-plugin-jsdoc-50.3.1.tgz
	https://registry.yarnpkg.com/eslint-plugin-local/-/eslint-plugin-local-6.0.0.tgz
	https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-5.1.1.tgz
	https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-8.1.0.tgz
	https://registry.yarnpkg.com/eslint-visitor-keys/-/eslint-visitor-keys-3.4.3.tgz
	https://registry.yarnpkg.com/eslint-visitor-keys/-/eslint-visitor-keys-4.1.0.tgz
	https://registry.yarnpkg.com/eslint/-/eslint-9.11.1.tgz
	https://registry.yarnpkg.com/esniff/-/esniff-2.0.1.tgz
	https://registry.yarnpkg.com/espree/-/espree-10.2.0.tgz
	https://registry.yarnpkg.com/esprima/-/esprima-4.0.1.tgz
	https://registry.yarnpkg.com/esquery/-/esquery-1.6.0.tgz
	https://registry.yarnpkg.com/esrecurse/-/esrecurse-4.3.0.tgz
	https://registry.yarnpkg.com/estraverse/-/estraverse-4.3.0.tgz
	https://registry.yarnpkg.com/estraverse/-/estraverse-5.2.0.tgz
	https://registry.yarnpkg.com/estraverse/-/estraverse-5.3.0.tgz
	https://registry.yarnpkg.com/esutils/-/esutils-2.0.3.tgz
	https://registry.yarnpkg.com/event-emitter/-/event-emitter-0.3.5.tgz
	https://registry.yarnpkg.com/event-stream/-/event-stream-3.3.4.tgz
	https://registry.yarnpkg.com/events/-/events-3.2.0.tgz
	https://registry.yarnpkg.com/exec-sh/-/exec-sh-0.2.2.tgz
	https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-2.1.4.tgz
	https://registry.yarnpkg.com/expand-template/-/expand-template-2.0.3.tgz
	https://registry.yarnpkg.com/expand-tilde/-/expand-tilde-2.0.2.tgz
	https://registry.yarnpkg.com/exponential-backoff/-/exponential-backoff-3.1.1.tgz
	https://registry.yarnpkg.com/ext/-/ext-1.4.0.tgz
	https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-1.1.4.tgz
	https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-2.0.1.tgz
	https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-3.0.2.tgz
	https://registry.yarnpkg.com/extend/-/extend-3.0.2.tgz
	https://registry.yarnpkg.com/extglob/-/extglob-2.0.4.tgz
	https://registry.yarnpkg.com/extract-zip/-/extract-zip-2.0.1.tgz
	https://registry.yarnpkg.com/fancy-log/-/fancy-log-1.3.3.tgz
	https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz
	https://registry.yarnpkg.com/fast-fifo/-/fast-fifo-1.3.2.tgz
	https://registry.yarnpkg.com/fast-glob/-/fast-glob-3.3.2.tgz
	https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.1.0.tgz
	https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-1.1.4.tgz
	https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz
	https://registry.yarnpkg.com/fast-plist/-/fast-plist-0.1.2.tgz
	https://registry.yarnpkg.com/fastest-levenshtein/-/fastest-levenshtein-1.0.12.tgz
	https://registry.yarnpkg.com/fastq/-/fastq-1.9.0.tgz
	https://registry.yarnpkg.com/fd-slicer/-/fd-slicer-1.0.1.tgz
	https://registry.yarnpkg.com/fd-slicer/-/fd-slicer-1.1.0.tgz
	https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-8.0.0.tgz
	https://registry.yarnpkg.com/file-loader/-/file-loader-6.2.0.tgz
	https://registry.yarnpkg.com/file-type/-/file-type-16.5.4.tgz
	https://registry.yarnpkg.com/file-uri-to-path/-/file-uri-to-path-1.0.0.tgz
	https://registry.yarnpkg.com/fill-range/-/fill-range-4.0.0.tgz
	https://registry.yarnpkg.com/fill-range/-/fill-range-7.1.1.tgz
	https://registry.yarnpkg.com/find-index/-/find-index-0.1.1.tgz
	https://registry.yarnpkg.com/find-parent-dir/-/find-parent-dir-0.3.1.tgz
	https://registry.yarnpkg.com/find-replace/-/find-replace-3.0.0.tgz
	https://registry.yarnpkg.com/find-up/-/find-up-1.1.2.tgz
	https://registry.yarnpkg.com/find-up/-/find-up-4.1.0.tgz
	https://registry.yarnpkg.com/find-up/-/find-up-5.0.0.tgz
	https://registry.yarnpkg.com/find-yarn-workspace-root/-/find-yarn-workspace-root-2.0.0.tgz
	https://registry.yarnpkg.com/findup-sync/-/findup-sync-2.0.0.tgz
	https://registry.yarnpkg.com/findup-sync/-/findup-sync-3.0.0.tgz
	https://registry.yarnpkg.com/fined/-/fined-1.2.0.tgz
	https://registry.yarnpkg.com/first-chunk-stream/-/first-chunk-stream-2.0.0.tgz
	https://registry.yarnpkg.com/flagged-respawn/-/flagged-respawn-1.0.1.tgz
	https://registry.yarnpkg.com/flat-cache/-/flat-cache-4.0.1.tgz
	https://registry.yarnpkg.com/flat/-/flat-5.0.2.tgz
	https://registry.yarnpkg.com/flatted/-/flatted-3.3.1.tgz
	https://registry.yarnpkg.com/flush-write-stream/-/flush-write-stream-1.1.1.tgz
	https://registry.yarnpkg.com/for-each/-/for-each-0.3.3.tgz
	https://registry.yarnpkg.com/for-in/-/for-in-1.0.2.tgz
	https://registry.yarnpkg.com/for-own/-/for-own-1.0.0.tgz
	https://registry.yarnpkg.com/foreground-child/-/foreground-child-3.1.1.tgz
	https://registry.yarnpkg.com/foreground-child/-/foreground-child-3.2.1.tgz
	https://registry.yarnpkg.com/fork-stream/-/fork-stream-0.0.4.tgz
	https://registry.yarnpkg.com/form-data/-/form-data-3.0.0.tgz
	https://registry.yarnpkg.com/form-data/-/form-data-3.0.1.tgz
	https://registry.yarnpkg.com/form-data/-/form-data-4.0.0.tgz
	https://registry.yarnpkg.com/fragment-cache/-/fragment-cache-0.2.1.tgz
	https://registry.yarnpkg.com/fresh/-/fresh-0.5.2.tgz
	https://registry.yarnpkg.com/from/-/from-0.1.7.tgz
	https://registry.yarnpkg.com/fs-constants/-/fs-constants-1.0.0.tgz
	https://registry.yarnpkg.com/fs-extra/-/fs-extra-11.2.0.tgz
	https://registry.yarnpkg.com/fs-extra/-/fs-extra-8.1.0.tgz
	https://registry.yarnpkg.com/fs-extra/-/fs-extra-9.1.0.tgz
	https://registry.yarnpkg.com/fs-minipass/-/fs-minipass-2.1.0.tgz
	https://registry.yarnpkg.com/fs-minipass/-/fs-minipass-3.0.3.tgz
	https://registry.yarnpkg.com/fs-mkdirp-stream/-/fs-mkdirp-stream-1.0.0.tgz
	https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz
	https://registry.yarnpkg.com/fsevents/-/fsevents-1.2.13.tgz
	https://registry.yarnpkg.com/fsevents/-/fsevents-2.3.2.tgz
	https://registry.yarnpkg.com/fsevents/-/fsevents-2.3.3.tgz
	https://registry.yarnpkg.com/fstream/-/fstream-1.0.12.tgz
	https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz
	https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.2.tgz
	https://registry.yarnpkg.com/gensync/-/gensync-1.0.0-beta.2.tgz
	https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-1.0.3.tgz
	https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-2.0.5.tgz
	https://registry.yarnpkg.com/get-func-name/-/get-func-name-2.0.0.tgz
	https://registry.yarnpkg.com/get-intrinsic/-/get-intrinsic-1.0.1.tgz
	https://registry.yarnpkg.com/get-intrinsic/-/get-intrinsic-1.2.4.tgz
	https://registry.yarnpkg.com/get-stdin/-/get-stdin-7.0.0.tgz
	https://registry.yarnpkg.com/get-stream/-/get-stream-5.2.0.tgz
	https://registry.yarnpkg.com/get-value/-/get-value-2.0.6.tgz
	https://registry.yarnpkg.com/github-from-package/-/github-from-package-0.0.0.tgz
	https://registry.yarnpkg.com/glob-parent/-/glob-parent-3.1.0.tgz
	https://registry.yarnpkg.com/glob-parent/-/glob-parent-5.1.2.tgz
	https://registry.yarnpkg.com/glob-parent/-/glob-parent-6.0.2.tgz
	https://registry.yarnpkg.com/glob-stream/-/glob-stream-6.1.0.tgz
	https://registry.yarnpkg.com/glob-to-regexp/-/glob-to-regexp-0.4.1.tgz
	https://registry.yarnpkg.com/glob-watcher/-/glob-watcher-5.0.5.tgz
	https://registry.yarnpkg.com/glob/-/glob-10.3.10.tgz
	https://registry.yarnpkg.com/glob/-/glob-10.4.2.tgz
	https://registry.yarnpkg.com/glob/-/glob-11.0.0.tgz
	https://registry.yarnpkg.com/glob/-/glob-5.0.15.tgz
	https://registry.yarnpkg.com/glob/-/glob-7.1.6.tgz
	https://registry.yarnpkg.com/glob/-/glob-7.1.7.tgz
	https://registry.yarnpkg.com/glob/-/glob-7.2.0.tgz
	https://registry.yarnpkg.com/glob/-/glob-7.2.3.tgz
	https://registry.yarnpkg.com/glob2base/-/glob2base-0.0.12.tgz
	https://registry.yarnpkg.com/global-agent/-/global-agent-3.0.0.tgz
	https://registry.yarnpkg.com/global-modules/-/global-modules-1.0.0.tgz
	https://registry.yarnpkg.com/global-prefix/-/global-prefix-1.0.2.tgz
	https://registry.yarnpkg.com/globals/-/globals-11.12.0.tgz
	https://registry.yarnpkg.com/globals/-/globals-14.0.0.tgz
	https://registry.yarnpkg.com/globalthis/-/globalthis-1.0.1.tgz
	https://registry.yarnpkg.com/globalthis/-/globalthis-1.0.2.tgz
	https://registry.yarnpkg.com/globby/-/globby-13.1.3.tgz
	https://registry.yarnpkg.com/glogg/-/glogg-1.0.2.tgz
	https://registry.yarnpkg.com/gopd/-/gopd-1.0.1.tgz
	https://registry.yarnpkg.com/got/-/got-11.8.5.tgz
	https://registry.yarnpkg.com/got/-/got-11.8.6.tgz
	https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.2.10.tgz
	https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.2.11.tgz
	https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.2.4.tgz
	https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.2.8.tgz
	https://registry.yarnpkg.com/graphemer/-/graphemer-1.4.0.tgz
	https://registry.yarnpkg.com/graphql-tag/-/graphql-tag-2.12.6.tgz
	https://registry.yarnpkg.com/graphql/-/graphql-16.8.1.tgz
	https://registry.yarnpkg.com/gulp-azure-storage/-/gulp-azure-storage-0.12.1.tgz
	https://registry.yarnpkg.com/gulp-bom/-/gulp-bom-3.0.0.tgz
	https://registry.yarnpkg.com/gulp-buffer/-/gulp-buffer-0.0.2.tgz
	https://registry.yarnpkg.com/gulp-cli/-/gulp-cli-2.3.0.tgz
	https://registry.yarnpkg.com/gulp-filter/-/gulp-filter-5.1.0.tgz
	https://registry.yarnpkg.com/gulp-flatmap/-/gulp-flatmap-1.0.2.tgz
	https://registry.yarnpkg.com/gulp-gunzip/-/gulp-gunzip-1.1.0.tgz
	https://registry.yarnpkg.com/gulp-gzip/-/gulp-gzip-1.4.2.tgz
	https://registry.yarnpkg.com/gulp-json-editor/-/gulp-json-editor-2.5.0.tgz
	https://registry.yarnpkg.com/gulp-merge-json/-/gulp-merge-json-2.1.1.tgz
	https://registry.yarnpkg.com/gulp-plumber/-/gulp-plumber-1.2.0.tgz
	https://registry.yarnpkg.com/gulp-rename/-/gulp-rename-1.2.2.tgz
	https://registry.yarnpkg.com/gulp-replace/-/gulp-replace-0.5.4.tgz
	https://registry.yarnpkg.com/gulp-sort/-/gulp-sort-2.0.0.tgz
	https://registry.yarnpkg.com/gulp-sourcemaps/-/gulp-sourcemaps-3.0.0.tgz
	https://registry.yarnpkg.com/gulp-svgmin/-/gulp-svgmin-4.1.0.tgz
	https://registry.yarnpkg.com/gulp-symdest/-/gulp-symdest-1.3.0.tgz
	https://registry.yarnpkg.com/gulp-untar/-/gulp-untar-0.0.7.tgz
	https://registry.yarnpkg.com/gulp-vinyl-zip/-/gulp-vinyl-zip-2.1.2.tgz
	https://registry.yarnpkg.com/gulp/-/gulp-4.0.2.tgz
	https://registry.yarnpkg.com/gulplog/-/gulplog-1.0.0.tgz
	https://registry.yarnpkg.com/gunzip-maybe/-/gunzip-maybe-1.4.2.tgz
	https://registry.yarnpkg.com/has-ansi/-/has-ansi-2.0.0.tgz
	https://registry.yarnpkg.com/has-flag/-/has-flag-3.0.0.tgz
	https://registry.yarnpkg.com/has-flag/-/has-flag-4.0.0.tgz
	https://registry.yarnpkg.com/has-property-descriptors/-/has-property-descriptors-1.0.2.tgz
	https://registry.yarnpkg.com/has-proto/-/has-proto-1.0.1.tgz
	https://registry.yarnpkg.com/has-proto/-/has-proto-1.0.3.tgz
	https://registry.yarnpkg.com/has-symbols/-/has-symbols-1.0.1.tgz
	https://registry.yarnpkg.com/has-symbols/-/has-symbols-1.0.3.tgz
	https://registry.yarnpkg.com/has-tostringtag/-/has-tostringtag-1.0.0.tgz
	https://registry.yarnpkg.com/has-value/-/has-value-0.3.1.tgz
	https://registry.yarnpkg.com/has-value/-/has-value-1.0.0.tgz
	https://registry.yarnpkg.com/has-values/-/has-values-0.1.4.tgz
	https://registry.yarnpkg.com/has-values/-/has-values-1.0.0.tgz
	https://registry.yarnpkg.com/has/-/has-1.0.3.tgz
	https://registry.yarnpkg.com/hasown/-/hasown-2.0.2.tgz
	https://registry.yarnpkg.com/he/-/he-1.2.0.tgz
	https://registry.yarnpkg.com/highlight.js/-/highlight.js-11.8.0.tgz
	https://registry.yarnpkg.com/homedir-polyfill/-/homedir-polyfill-1.0.3.tgz
	https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.8.8.tgz
	https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.8.9.tgz
	https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-4.1.0.tgz
	https://registry.yarnpkg.com/html-encoding-sniffer/-/html-encoding-sniffer-3.0.0.tgz
	https://registry.yarnpkg.com/html-escaper/-/html-escaper-2.0.0.tgz
	https://registry.yarnpkg.com/htmlparser2/-/htmlparser2-8.0.1.tgz
	https://registry.yarnpkg.com/http-assert/-/http-assert-1.5.0.tgz
	https://registry.yarnpkg.com/http-cache-semantics/-/http-cache-semantics-4.1.1.tgz
	https://registry.yarnpkg.com/http-errors/-/http-errors-1.6.3.tgz
	https://registry.yarnpkg.com/http-errors/-/http-errors-1.8.1.tgz
	https://registry.yarnpkg.com/http-errors/-/http-errors-2.0.0.tgz
	https://registry.yarnpkg.com/http-proxy-agent/-/http-proxy-agent-4.0.1.tgz
	https://registry.yarnpkg.com/http-proxy-agent/-/http-proxy-agent-5.0.0.tgz
	https://registry.yarnpkg.com/http-proxy-agent/-/http-proxy-agent-7.0.0.tgz
	https://registry.yarnpkg.com/http-proxy-agent/-/http-proxy-agent-7.0.2.tgz
	https://registry.yarnpkg.com/http2-wrapper/-/http2-wrapper-1.0.3.tgz
	https://registry.yarnpkg.com/https-proxy-agent/-/https-proxy-agent-5.0.1.tgz
	https://registry.yarnpkg.com/https-proxy-agent/-/https-proxy-agent-7.0.2.tgz
	https://registry.yarnpkg.com/https-proxy-agent/-/https-proxy-agent-7.0.5.tgz
	https://registry.yarnpkg.com/husky/-/husky-0.13.4.tgz
	https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.6.3.tgz
	https://registry.yarnpkg.com/icss-utils/-/icss-utils-5.1.0.tgz
	https://registry.yarnpkg.com/ieee754/-/ieee754-1.2.1.tgz
	https://registry.yarnpkg.com/ignore/-/ignore-5.3.1.tgz
	https://registry.yarnpkg.com/image-size/-/image-size-1.0.0.tgz
	https://registry.yarnpkg.com/immediate/-/immediate-3.0.6.tgz
	https://registry.yarnpkg.com/import-fresh/-/import-fresh-3.3.0.tgz
	https://registry.yarnpkg.com/import-local/-/import-local-3.0.2.tgz
	https://registry.yarnpkg.com/imurmurhash/-/imurmurhash-0.1.4.tgz
	https://registry.yarnpkg.com/indent-string/-/indent-string-4.0.0.tgz
	https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz
	https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz
	https://registry.yarnpkg.com/inherits/-/inherits-2.0.4.tgz
	https://registry.yarnpkg.com/ini/-/ini-1.3.8.tgz
	https://registry.yarnpkg.com/innosetup/-/innosetup-6.0.5.tgz
	https://registry.yarnpkg.com/interpret/-/interpret-1.4.0.tgz
	https://registry.yarnpkg.com/interpret/-/interpret-3.1.1.tgz
	https://registry.yarnpkg.com/invert-kv/-/invert-kv-1.0.0.tgz
	https://registry.yarnpkg.com/ip-address/-/ip-address-9.0.5.tgz
	https://registry.yarnpkg.com/is-absolute/-/is-absolute-1.0.0.tgz
	https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-0.1.6.tgz
	https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz
	https://registry.yarnpkg.com/is-arguments/-/is-arguments-1.1.1.tgz
	https://registry.yarnpkg.com/is-arrayish/-/is-arrayish-0.2.1.tgz
	https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-1.0.1.tgz
	https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-2.1.0.tgz
	https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.6.tgz
	https://registry.yarnpkg.com/is-callable/-/is-callable-1.2.2.tgz
	https://registry.yarnpkg.com/is-ci/-/is-ci-1.2.1.tgz
	https://registry.yarnpkg.com/is-core-module/-/is-core-module-2.11.0.tgz
	https://registry.yarnpkg.com/is-core-module/-/is-core-module-2.2.0.tgz
	https://registry.yarnpkg.com/is-core-module/-/is-core-module-2.8.0.tgz
	https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-0.1.4.tgz
	https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz
	https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.2.tgz
	https://registry.yarnpkg.com/is-deflate/-/is-deflate-1.0.0.tgz
	https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-0.1.6.tgz
	https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-1.0.2.tgz
	https://registry.yarnpkg.com/is-docker/-/is-docker-2.2.1.tgz
	https://registry.yarnpkg.com/is-extendable/-/is-extendable-0.1.1.tgz
	https://registry.yarnpkg.com/is-extendable/-/is-extendable-1.0.1.tgz
	https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz
	https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz
	https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz
	https://registry.yarnpkg.com/is-generator-function/-/is-generator-function-1.0.9.tgz
	https://registry.yarnpkg.com/is-glob/-/is-glob-3.1.0.tgz
	https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.3.tgz
	https://registry.yarnpkg.com/is-gzip/-/is-gzip-1.0.0.tgz
	https://registry.yarnpkg.com/is-interactive/-/is-interactive-2.0.0.tgz
	https://registry.yarnpkg.com/is-lambda/-/is-lambda-1.0.1.tgz
	https://registry.yarnpkg.com/is-negated-glob/-/is-negated-glob-1.0.0.tgz
	https://registry.yarnpkg.com/is-negative-zero/-/is-negative-zero-2.0.1.tgz
	https://registry.yarnpkg.com/is-number/-/is-number-3.0.0.tgz
	https://registry.yarnpkg.com/is-number/-/is-number-4.0.0.tgz
	https://registry.yarnpkg.com/is-number/-/is-number-7.0.0.tgz
	https://registry.yarnpkg.com/is-path-inside/-/is-path-inside-3.0.3.tgz
	https://registry.yarnpkg.com/is-plain-obj/-/is-plain-obj-1.1.0.tgz
	https://registry.yarnpkg.com/is-plain-obj/-/is-plain-obj-2.1.0.tgz
	https://registry.yarnpkg.com/is-plain-object/-/is-plain-object-2.0.4.tgz
	https://registry.yarnpkg.com/is-plain-object/-/is-plain-object-5.0.0.tgz
	https://registry.yarnpkg.com/is-potential-custom-element-name/-/is-potential-custom-element-name-1.0.1.tgz
	https://registry.yarnpkg.com/is-promise/-/is-promise-2.2.2.tgz
	https://registry.yarnpkg.com/is-regex/-/is-regex-1.1.1.tgz
	https://registry.yarnpkg.com/is-relative/-/is-relative-1.0.0.tgz
	https://registry.yarnpkg.com/is-stream/-/is-stream-1.1.0.tgz
	https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.3.tgz
	https://registry.yarnpkg.com/is-typed-array/-/is-typed-array-1.1.12.tgz
	https://registry.yarnpkg.com/is-unc-path/-/is-unc-path-1.0.0.tgz
	https://registry.yarnpkg.com/is-unicode-supported/-/is-unicode-supported-0.1.0.tgz
	https://registry.yarnpkg.com/is-unicode-supported/-/is-unicode-supported-1.3.0.tgz
	https://registry.yarnpkg.com/is-utf8/-/is-utf8-0.2.1.tgz
	https://registry.yarnpkg.com/is-valid-glob/-/is-valid-glob-1.0.0.tgz
	https://registry.yarnpkg.com/is-windows/-/is-windows-1.0.2.tgz
	https://registry.yarnpkg.com/is-wsl/-/is-wsl-2.2.0.tgz
	https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz
	https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz
	https://registry.yarnpkg.com/isbinaryfile/-/isbinaryfile-3.0.3.tgz
	https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz
	https://registry.yarnpkg.com/isexe/-/isexe-3.1.1.tgz
	https://registry.yarnpkg.com/isobject/-/isobject-2.1.0.tgz
	https://registry.yarnpkg.com/isobject/-/isobject-3.0.1.tgz
	https://registry.yarnpkg.com/istanbul-lib-coverage/-/istanbul-lib-coverage-3.2.0.tgz
	https://registry.yarnpkg.com/istanbul-lib-instrument/-/istanbul-lib-instrument-6.0.1.tgz
	https://registry.yarnpkg.com/istanbul-lib-report/-/istanbul-lib-report-3.0.1.tgz
	https://registry.yarnpkg.com/istanbul-lib-source-maps/-/istanbul-lib-source-maps-4.0.1.tgz
	https://registry.yarnpkg.com/istanbul-reports/-/istanbul-reports-3.1.6.tgz
	https://registry.yarnpkg.com/istanbul-to-vscode/-/istanbul-to-vscode-2.0.1.tgz
	https://registry.yarnpkg.com/istextorbinary/-/istextorbinary-1.0.2.tgz
	https://registry.yarnpkg.com/jackspeak/-/jackspeak-2.3.6.tgz
	https://registry.yarnpkg.com/jackspeak/-/jackspeak-3.4.0.tgz
	https://registry.yarnpkg.com/jackspeak/-/jackspeak-4.0.1.tgz
	https://registry.yarnpkg.com/jest-worker/-/jest-worker-27.5.1.tgz
	https://registry.yarnpkg.com/js-base64/-/js-base64-3.7.7.tgz
	https://registry.yarnpkg.com/js-beautify/-/js-beautify-1.8.9.tgz
	https://registry.yarnpkg.com/js-tokens/-/js-tokens-4.0.0.tgz
	https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.14.0.tgz
	https://registry.yarnpkg.com/js-yaml/-/js-yaml-4.1.0.tgz
	https://registry.yarnpkg.com/jsbi/-/jsbi-3.1.4.tgz
	https://registry.yarnpkg.com/jsbn/-/jsbn-1.1.0.tgz
	https://registry.yarnpkg.com/jschardet/-/jschardet-3.1.4.tgz
	https://registry.yarnpkg.com/jsdoc-type-pratt-parser/-/jsdoc-type-pratt-parser-4.1.0.tgz
	https://registry.yarnpkg.com/jsdom/-/jsdom-21.1.1.tgz
	https://registry.yarnpkg.com/jsesc/-/jsesc-2.5.2.tgz
	https://registry.yarnpkg.com/json-buffer/-/json-buffer-3.0.1.tgz
	https://registry.yarnpkg.com/json-parse-better-errors/-/json-parse-better-errors-1.0.2.tgz
	https://registry.yarnpkg.com/json-parse-even-better-errors/-/json-parse-even-better-errors-2.3.1.tgz
	https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz
	https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-1.0.0.tgz
	https://registry.yarnpkg.com/json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz
	https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz
	https://registry.yarnpkg.com/json5/-/json5-2.2.2.tgz
	https://registry.yarnpkg.com/json5/-/json5-2.2.3.tgz
	https://registry.yarnpkg.com/jsonc-parser/-/jsonc-parser-2.3.0.tgz
	https://registry.yarnpkg.com/jsonc-parser/-/jsonc-parser-2.3.1.tgz
	https://registry.yarnpkg.com/jsonc-parser/-/jsonc-parser-3.2.0.tgz
	https://registry.yarnpkg.com/jsonc-parser/-/jsonc-parser-3.3.1.tgz
	https://registry.yarnpkg.com/jsonfile/-/jsonfile-4.0.0.tgz
	https://registry.yarnpkg.com/jsonfile/-/jsonfile-6.1.0.tgz
	https://registry.yarnpkg.com/jsonwebtoken/-/jsonwebtoken-9.0.0.tgz
	https://registry.yarnpkg.com/jsonwebtoken/-/jsonwebtoken-9.0.2.tgz
	https://registry.yarnpkg.com/jszip/-/jszip-3.10.1.tgz
	https://registry.yarnpkg.com/just-debounce/-/just-debounce-1.0.0.tgz
	https://registry.yarnpkg.com/just-extend/-/just-extend-4.2.1.tgz
	https://registry.yarnpkg.com/jwa/-/jwa-1.4.1.tgz
	https://registry.yarnpkg.com/jwa/-/jwa-2.0.0.tgz
	https://registry.yarnpkg.com/jws/-/jws-3.2.2.tgz
	https://registry.yarnpkg.com/jws/-/jws-4.0.0.tgz
	https://registry.yarnpkg.com/katex/-/katex-0.16.10.tgz
	https://registry.yarnpkg.com/kerberos/-/kerberos-2.1.1.tgz
	https://registry.yarnpkg.com/keygrip/-/keygrip-1.1.0.tgz
	https://registry.yarnpkg.com/keytar/-/keytar-7.9.0.tgz
	https://registry.yarnpkg.com/keyv/-/keyv-4.5.4.tgz
	https://registry.yarnpkg.com/kind-of/-/kind-of-1.1.0.tgz
	https://registry.yarnpkg.com/kind-of/-/kind-of-3.2.2.tgz
	https://registry.yarnpkg.com/kind-of/-/kind-of-4.0.0.tgz
	https://registry.yarnpkg.com/kind-of/-/kind-of-5.1.0.tgz
	https://registry.yarnpkg.com/kind-of/-/kind-of-6.0.3.tgz
	https://registry.yarnpkg.com/koa-compose/-/koa-compose-4.1.0.tgz
	https://registry.yarnpkg.com/koa-convert/-/koa-convert-2.0.0.tgz
	https://registry.yarnpkg.com/koa-morgan/-/koa-morgan-1.0.1.tgz
	https://registry.yarnpkg.com/koa-mount/-/koa-mount-4.0.0.tgz
	https://registry.yarnpkg.com/koa-send/-/koa-send-5.0.1.tgz
	https://registry.yarnpkg.com/koa-static/-/koa-static-5.0.0.tgz
	https://registry.yarnpkg.com/koa/-/koa-2.15.3.tgz
	https://registry.yarnpkg.com/last-run/-/last-run-1.1.1.tgz
	https://registry.yarnpkg.com/lazy.js/-/lazy.js-0.4.3.tgz
	https://registry.yarnpkg.com/lazystream/-/lazystream-1.0.0.tgz
	https://registry.yarnpkg.com/lcid/-/lcid-1.0.0.tgz
	https://registry.yarnpkg.com/lead/-/lead-1.0.0.tgz
	https://registry.yarnpkg.com/leven/-/leven-3.1.0.tgz
	https://registry.yarnpkg.com/levn/-/levn-0.3.0.tgz
	https://registry.yarnpkg.com/levn/-/levn-0.4.1.tgz
	https://registry.yarnpkg.com/lie/-/lie-3.3.0.tgz
	https://registry.yarnpkg.com/liftoff/-/liftoff-3.1.0.tgz
	https://registry.yarnpkg.com/lilconfig/-/lilconfig-3.1.2.tgz
	https://registry.yarnpkg.com/linkify-it/-/linkify-it-3.0.3.tgz
	https://registry.yarnpkg.com/linkify-it/-/linkify-it-5.0.0.tgz
	https://registry.yarnpkg.com/load-json-file/-/load-json-file-1.1.0.tgz
	https://registry.yarnpkg.com/load-json-file/-/load-json-file-4.0.0.tgz
	https://registry.yarnpkg.com/load-yaml-file/-/load-yaml-file-0.2.0.tgz
	https://registry.yarnpkg.com/loader-runner/-/loader-runner-4.2.0.tgz
	https://registry.yarnpkg.com/loader-utils/-/loader-utils-2.0.4.tgz
	https://registry.yarnpkg.com/locate-path/-/locate-path-5.0.0.tgz
	https://registry.yarnpkg.com/locate-path/-/locate-path-6.0.0.tgz
	https://registry.yarnpkg.com/lodash.camelcase/-/lodash.camelcase-4.3.0.tgz
	https://registry.yarnpkg.com/lodash.clone/-/lodash.clone-4.5.0.tgz
	https://registry.yarnpkg.com/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz
	https://registry.yarnpkg.com/lodash.get/-/lodash.get-4.4.2.tgz
	https://registry.yarnpkg.com/lodash.includes/-/lodash.includes-4.3.0.tgz
	https://registry.yarnpkg.com/lodash.isboolean/-/lodash.isboolean-3.0.3.tgz
	https://registry.yarnpkg.com/lodash.isinteger/-/lodash.isinteger-4.0.4.tgz
	https://registry.yarnpkg.com/lodash.isnumber/-/lodash.isnumber-3.0.3.tgz
	https://registry.yarnpkg.com/lodash.isplainobject/-/lodash.isplainobject-4.0.6.tgz
	https://registry.yarnpkg.com/lodash.isstring/-/lodash.isstring-4.0.1.tgz
	https://registry.yarnpkg.com/lodash.memoize/-/lodash.memoize-4.1.2.tgz
	https://registry.yarnpkg.com/lodash.merge/-/lodash.merge-4.6.2.tgz
	https://registry.yarnpkg.com/lodash.mergewith/-/lodash.mergewith-4.6.2.tgz
	https://registry.yarnpkg.com/lodash.once/-/lodash.once-4.1.1.tgz
	https://registry.yarnpkg.com/lodash.some/-/lodash.some-4.6.0.tgz
	https://registry.yarnpkg.com/lodash.throttle/-/lodash.throttle-4.1.1.tgz
	https://registry.yarnpkg.com/lodash.uniq/-/lodash.uniq-4.5.0.tgz
	https://registry.yarnpkg.com/lodash/-/lodash-4.17.21.tgz
	https://registry.yarnpkg.com/log-symbols/-/log-symbols-4.1.0.tgz
	https://registry.yarnpkg.com/log-symbols/-/log-symbols-5.1.0.tgz
	https://registry.yarnpkg.com/lowercase-keys/-/lowercase-keys-2.0.0.tgz
	https://registry.yarnpkg.com/lru-cache/-/lru-cache-10.3.0.tgz
	https://registry.yarnpkg.com/lru-cache/-/lru-cache-11.0.1.tgz
	https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.1.5.tgz
	https://registry.yarnpkg.com/lru-cache/-/lru-cache-6.0.0.tgz
	https://registry.yarnpkg.com/lru-queue/-/lru-queue-0.1.0.tgz
	https://registry.yarnpkg.com/make-dir/-/make-dir-4.0.0.tgz
	https://registry.yarnpkg.com/make-error/-/make-error-1.3.6.tgz
	https://registry.yarnpkg.com/make-fetch-happen/-/make-fetch-happen-13.0.1.tgz
	https://registry.yarnpkg.com/make-iterator/-/make-iterator-1.0.1.tgz
	https://registry.yarnpkg.com/map-cache/-/map-cache-0.2.2.tgz
	https://registry.yarnpkg.com/map-stream/-/map-stream-0.1.0.tgz
	https://registry.yarnpkg.com/map-visit/-/map-visit-1.0.0.tgz
	https://registry.yarnpkg.com/markdown-it-front-matter/-/markdown-it-front-matter-0.2.4.tgz
	https://registry.yarnpkg.com/markdown-it/-/markdown-it-12.3.2.tgz
	https://registry.yarnpkg.com/markdown-it/-/markdown-it-14.1.0.tgz
	https://registry.yarnpkg.com/matchdep/-/matchdep-2.0.0.tgz
	https://registry.yarnpkg.com/matcher/-/matcher-3.0.0.tgz
	https://registry.yarnpkg.com/md5/-/md5-2.3.0.tgz
	https://registry.yarnpkg.com/mdn-data/-/mdn-data-2.0.14.tgz
	https://registry.yarnpkg.com/mdn-data/-/mdn-data-2.0.28.tgz
	https://registry.yarnpkg.com/mdn-data/-/mdn-data-2.0.30.tgz
	https://registry.yarnpkg.com/mdurl/-/mdurl-1.0.1.tgz
	https://registry.yarnpkg.com/mdurl/-/mdurl-2.0.0.tgz
	https://registry.yarnpkg.com/media-typer/-/media-typer-0.3.0.tgz
	https://registry.yarnpkg.com/memoizee/-/memoizee-0.4.15.tgz
	https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.5.0.tgz
	https://registry.yarnpkg.com/memorystream/-/memorystream-0.3.1.tgz
	https://registry.yarnpkg.com/merge-options/-/merge-options-1.0.1.tgz
	https://registry.yarnpkg.com/merge-stream/-/merge-stream-2.0.0.tgz
	https://registry.yarnpkg.com/merge/-/merge-1.2.1.tgz
	https://registry.yarnpkg.com/merge2/-/merge2-1.4.1.tgz
	https://registry.yarnpkg.com/micromatch/-/micromatch-3.1.10.tgz
	https://registry.yarnpkg.com/micromatch/-/micromatch-4.0.8.tgz
	https://registry.yarnpkg.com/mime-db/-/mime-db-1.44.0.tgz
	https://registry.yarnpkg.com/mime-db/-/mime-db-1.45.0.tgz
	https://registry.yarnpkg.com/mime-db/-/mime-db-1.48.0.tgz
	https://registry.yarnpkg.com/mime-db/-/mime-db-1.52.0.tgz
	https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.27.tgz
	https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.28.tgz
	https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.31.tgz
	https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.35.tgz
	https://registry.yarnpkg.com/mime/-/mime-1.6.0.tgz
	https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-2.1.0.tgz
	https://registry.yarnpkg.com/mimic-response/-/mimic-response-1.0.1.tgz
	https://registry.yarnpkg.com/mimic-response/-/mimic-response-3.1.0.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-10.0.1.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-3.1.2.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-5.0.1.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-5.1.6.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-7.4.6.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-9.0.3.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-9.0.5.tgz
	https://registry.yarnpkg.com/minimist/-/minimist-1.2.6.tgz
	https://registry.yarnpkg.com/minimist/-/minimist-1.2.8.tgz
	https://registry.yarnpkg.com/minipass-collect/-/minipass-collect-2.0.1.tgz
	https://registry.yarnpkg.com/minipass-fetch/-/minipass-fetch-3.0.5.tgz
	https://registry.yarnpkg.com/minipass-flush/-/minipass-flush-1.0.5.tgz
	https://registry.yarnpkg.com/minipass-pipeline/-/minipass-pipeline-1.2.4.tgz
	https://registry.yarnpkg.com/minipass-sized/-/minipass-sized-1.0.3.tgz
	https://registry.yarnpkg.com/minipass/-/minipass-3.1.3.tgz
	https://registry.yarnpkg.com/minipass/-/minipass-3.3.6.tgz
	https://registry.yarnpkg.com/minipass/-/minipass-5.0.0.tgz
	https://registry.yarnpkg.com/minipass/-/minipass-7.1.2.tgz
	https://registry.yarnpkg.com/minizlib/-/minizlib-2.1.2.tgz
	https://registry.yarnpkg.com/mixin-deep/-/mixin-deep-1.3.2.tgz
	https://registry.yarnpkg.com/mkdirp-classic/-/mkdirp-classic-0.5.3.tgz
	https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.5.tgz
	https://registry.yarnpkg.com/mkdirp/-/mkdirp-1.0.4.tgz
	https://registry.yarnpkg.com/mkdirp/-/mkdirp-2.1.6.tgz
	https://registry.yarnpkg.com/mkdirp/-/mkdirp-3.0.1.tgz
	https://registry.yarnpkg.com/mocha-junit-reporter/-/mocha-junit-reporter-2.2.1.tgz
	https://registry.yarnpkg.com/mocha-multi-reporters/-/mocha-multi-reporters-1.5.1.tgz
	https://registry.yarnpkg.com/mocha/-/mocha-10.2.0.tgz
	https://registry.yarnpkg.com/morgan/-/morgan-1.10.0.tgz
	https://registry.yarnpkg.com/morphdom/-/morphdom-2.6.1.tgz
	https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz
	https://registry.yarnpkg.com/ms/-/ms-2.1.2.tgz
	https://registry.yarnpkg.com/ms/-/ms-2.1.3.tgz
	https://registry.yarnpkg.com/multimatch/-/multimatch-2.1.0.tgz
	https://registry.yarnpkg.com/mute-stdout/-/mute-stdout-1.0.1.tgz
	https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.8.tgz
	https://registry.yarnpkg.com/nan/-/nan-2.14.2.tgz
	https://registry.yarnpkg.com/nan/-/nan-2.19.0.tgz
	https://registry.yarnpkg.com/nanoid/-/nanoid-3.3.3.tgz
	https://registry.yarnpkg.com/nanoid/-/nanoid-3.3.7.tgz
	https://registry.yarnpkg.com/nanomatch/-/nanomatch-1.2.13.tgz
	https://registry.yarnpkg.com/napi-build-utils/-/napi-build-utils-1.0.2.tgz
	https://registry.yarnpkg.com/native-is-elevated/-/native-is-elevated-0.7.0.tgz
	https://registry.yarnpkg.com/native-keymap/-/native-keymap-3.3.5.tgz
	https://registry.yarnpkg.com/native-watchdog/-/native-watchdog-1.4.2.tgz
	https://registry.yarnpkg.com/natural-compare/-/natural-compare-1.4.0.tgz
	https://registry.yarnpkg.com/ncp/-/ncp-2.0.0.tgz
	https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.2.tgz
	https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.3.tgz
	https://registry.yarnpkg.com/neo-async/-/neo-async-2.6.2.tgz
	https://registry.yarnpkg.com/next-tick/-/next-tick-1.1.0.tgz
	https://registry.yarnpkg.com/nice-try/-/nice-try-1.0.5.tgz
	https://registry.yarnpkg.com/nise/-/nise-5.1.0.tgz
	https://registry.yarnpkg.com/node-abi/-/node-abi-3.30.0.tgz
	https://registry.yarnpkg.com/node-abi/-/node-abi-3.8.0.tgz
	https://registry.yarnpkg.com/node-abort-controller/-/node-abort-controller-3.1.1.tgz
	https://registry.yarnpkg.com/node-addon-api/-/node-addon-api-4.3.0.tgz
	https://registry.yarnpkg.com/node-addon-api/-/node-addon-api-7.1.0.tgz
	https://registry.yarnpkg.com/node-addon-api/-/node-addon-api-8.2.0.tgz
	https://registry.yarnpkg.com/node-fetch/-/node-fetch-2.6.7.tgz
	https://registry.yarnpkg.com/node-fetch/-/node-fetch-2.6.8.tgz
	https://registry.yarnpkg.com/node-fetch/-/node-fetch-2.7.0.tgz
	https://registry.yarnpkg.com/node-forge/-/node-forge-1.3.1.tgz
	https://registry.yarnpkg.com/node-gyp-build/-/node-gyp-build-4.8.1.tgz
	https://registry.yarnpkg.com/node-gyp/-/node-gyp-10.1.0.tgz
	https://registry.yarnpkg.com/node-html-markdown/-/node-html-markdown-1.3.0.tgz
	https://registry.yarnpkg.com/node-html-parser/-/node-html-parser-6.1.13.tgz
	https://registry.yarnpkg.com/node-pty/-/node-pty-1.1.0-beta22.tgz
	https://registry.yarnpkg.com/node-releases/-/node-releases-2.0.18.tgz
	https://registry.yarnpkg.com/nopt/-/nopt-4.0.1.tgz
	https://registry.yarnpkg.com/nopt/-/nopt-7.2.1.tgz
	https://registry.yarnpkg.com/normalize-package-data/-/normalize-package-data-2.5.0.tgz
	https://registry.yarnpkg.com/normalize-path/-/normalize-path-1.0.0.tgz
	https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.1.1.tgz
	https://registry.yarnpkg.com/normalize-path/-/normalize-path-3.0.0.tgz
	https://registry.yarnpkg.com/normalize-url/-/normalize-url-6.1.0.tgz
	https://registry.yarnpkg.com/now-and-later/-/now-and-later-2.0.1.tgz
	https://registry.yarnpkg.com/npm-run-all/-/npm-run-all-4.1.5.tgz
	https://registry.yarnpkg.com/nth-check/-/nth-check-2.0.1.tgz
	https://registry.yarnpkg.com/nth-check/-/nth-check-2.1.1.tgz
	https://registry.yarnpkg.com/number-is-nan/-/number-is-nan-1.0.1.tgz
	https://registry.yarnpkg.com/nwsapi/-/nwsapi-2.2.2.tgz
	https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz
	https://registry.yarnpkg.com/object-copy/-/object-copy-0.1.0.tgz
	https://registry.yarnpkg.com/object-inspect/-/object-inspect-1.13.2.tgz
	https://registry.yarnpkg.com/object-inspect/-/object-inspect-1.9.0.tgz
	https://registry.yarnpkg.com/object-keys/-/object-keys-0.4.0.tgz
	https://registry.yarnpkg.com/object-keys/-/object-keys-1.1.1.tgz
	https://registry.yarnpkg.com/object-visit/-/object-visit-1.0.1.tgz
	https://registry.yarnpkg.com/object.assign/-/object.assign-4.1.2.tgz
	https://registry.yarnpkg.com/object.defaults/-/object.defaults-1.1.0.tgz
	https://registry.yarnpkg.com/object.map/-/object.map-1.0.1.tgz
	https://registry.yarnpkg.com/object.pick/-/object.pick-1.3.0.tgz
	https://registry.yarnpkg.com/object.reduce/-/object.reduce-1.0.1.tgz
	https://registry.yarnpkg.com/on-finished/-/on-finished-2.3.0.tgz
	https://registry.yarnpkg.com/on-finished/-/on-finished-2.4.1.tgz
	https://registry.yarnpkg.com/on-headers/-/on-headers-1.0.2.tgz
	https://registry.yarnpkg.com/once/-/once-1.4.0.tgz
	https://registry.yarnpkg.com/onetime/-/onetime-5.1.2.tgz
	https://registry.yarnpkg.com/only/-/only-0.0.2.tgz
	https://registry.yarnpkg.com/open/-/open-8.4.0.tgz
	https://registry.yarnpkg.com/open/-/open-8.4.2.tgz
	https://registry.yarnpkg.com/optionator/-/optionator-0.8.3.tgz
	https://registry.yarnpkg.com/optionator/-/optionator-0.9.4.tgz
	https://registry.yarnpkg.com/ora/-/ora-7.0.1.tgz
	https://registry.yarnpkg.com/ordered-read-streams/-/ordered-read-streams-1.0.1.tgz
	https://registry.yarnpkg.com/os-browserify/-/os-browserify-0.3.0.tgz
	https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz
	https://registry.yarnpkg.com/os-locale/-/os-locale-1.4.0.tgz
	https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz
	https://registry.yarnpkg.com/osenv/-/osenv-0.1.5.tgz
	https://registry.yarnpkg.com/p-all/-/p-all-1.0.0.tgz
	https://registry.yarnpkg.com/p-cancelable/-/p-cancelable-2.1.1.tgz
	https://registry.yarnpkg.com/p-limit/-/p-limit-2.3.0.tgz
	https://registry.yarnpkg.com/p-limit/-/p-limit-3.1.0.tgz
	https://registry.yarnpkg.com/p-locate/-/p-locate-4.1.0.tgz
	https://registry.yarnpkg.com/p-locate/-/p-locate-5.0.0.tgz
	https://registry.yarnpkg.com/p-map/-/p-map-1.2.0.tgz
	https://registry.yarnpkg.com/p-map/-/p-map-4.0.0.tgz
	https://registry.yarnpkg.com/p-try/-/p-try-2.2.0.tgz
	https://registry.yarnpkg.com/package-json-from-dist/-/package-json-from-dist-1.0.0.tgz
	https://registry.yarnpkg.com/pako/-/pako-0.2.9.tgz
	https://registry.yarnpkg.com/pako/-/pako-1.0.11.tgz
	https://registry.yarnpkg.com/parent-module/-/parent-module-1.0.1.tgz
	https://registry.yarnpkg.com/parse-filepath/-/parse-filepath-1.0.2.tgz
	https://registry.yarnpkg.com/parse-imports/-/parse-imports-2.2.1.tgz
	https://registry.yarnpkg.com/parse-json/-/parse-json-2.2.0.tgz
	https://registry.yarnpkg.com/parse-json/-/parse-json-4.0.0.tgz
	https://registry.yarnpkg.com/parse-node-version/-/parse-node-version-1.0.1.tgz
	https://registry.yarnpkg.com/parse-passwd/-/parse-passwd-1.0.0.tgz
	https://registry.yarnpkg.com/parse-semver/-/parse-semver-1.1.1.tgz
	https://registry.yarnpkg.com/parse5-htmlparser2-tree-adapter/-/parse5-htmlparser2-tree-adapter-7.0.0.tgz
	https://registry.yarnpkg.com/parse5/-/parse5-3.0.2.tgz
	https://registry.yarnpkg.com/parse5/-/parse5-7.1.2.tgz
	https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.3.tgz
	https://registry.yarnpkg.com/pascalcase/-/pascalcase-0.1.1.tgz
	https://registry.yarnpkg.com/path-browserify/-/path-browserify-1.0.1.tgz
	https://registry.yarnpkg.com/path-dirname/-/path-dirname-1.0.2.tgz
	https://registry.yarnpkg.com/path-exists/-/path-exists-2.1.0.tgz
	https://registry.yarnpkg.com/path-exists/-/path-exists-4.0.0.tgz
	https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz
	https://registry.yarnpkg.com/path-key/-/path-key-2.0.1.tgz
	https://registry.yarnpkg.com/path-key/-/path-key-3.1.1.tgz
	https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.6.tgz
	https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.7.tgz
	https://registry.yarnpkg.com/path-root-regex/-/path-root-regex-0.1.2.tgz
	https://registry.yarnpkg.com/path-root/-/path-root-0.1.1.tgz
	https://registry.yarnpkg.com/path-scurry/-/path-scurry-1.11.1.tgz
	https://registry.yarnpkg.com/path-scurry/-/path-scurry-2.0.0.tgz
	https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-1.9.0.tgz
	https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-6.3.0.tgz
	https://registry.yarnpkg.com/path-type/-/path-type-1.1.0.tgz
	https://registry.yarnpkg.com/path-type/-/path-type-3.0.0.tgz
	https://registry.yarnpkg.com/path-type/-/path-type-4.0.0.tgz
	https://registry.yarnpkg.com/pathval/-/pathval-1.1.1.tgz
	https://registry.yarnpkg.com/pause-stream/-/pause-stream-0.0.11.tgz
	https://registry.yarnpkg.com/peek-readable/-/peek-readable-4.1.0.tgz
	https://registry.yarnpkg.com/peek-stream/-/peek-stream-1.1.3.tgz
	https://registry.yarnpkg.com/pend/-/pend-1.2.0.tgz
	https://registry.yarnpkg.com/picocolors/-/picocolors-0.2.1.tgz
	https://registry.yarnpkg.com/picocolors/-/picocolors-1.1.0.tgz
	https://registry.yarnpkg.com/picomatch/-/picomatch-2.3.0.tgz
	https://registry.yarnpkg.com/picomatch/-/picomatch-2.3.1.tgz
	https://registry.yarnpkg.com/pidtree/-/pidtree-0.3.1.tgz
	https://registry.yarnpkg.com/pify/-/pify-2.3.0.tgz
	https://registry.yarnpkg.com/pify/-/pify-3.0.0.tgz
	https://registry.yarnpkg.com/pify/-/pify-4.0.1.tgz
	https://registry.yarnpkg.com/pinkie-promise/-/pinkie-promise-2.0.1.tgz
	https://registry.yarnpkg.com/pinkie/-/pinkie-2.0.4.tgz
	https://registry.yarnpkg.com/pkg-dir/-/pkg-dir-4.2.0.tgz
	https://registry.yarnpkg.com/playwright-core/-/playwright-core-1.46.1.tgz
	https://registry.yarnpkg.com/playwright-core/-/playwright-core-1.47.2.tgz
	https://registry.yarnpkg.com/playwright/-/playwright-1.46.1.tgz
	https://registry.yarnpkg.com/playwright/-/playwright-1.47.2.tgz
	https://registry.yarnpkg.com/plist/-/plist-3.0.5.tgz
	https://registry.yarnpkg.com/plist/-/plist-3.1.0.tgz
	https://registry.yarnpkg.com/plugin-error/-/plugin-error-0.1.2.tgz
	https://registry.yarnpkg.com/plugin-error/-/plugin-error-1.0.1.tgz
	https://registry.yarnpkg.com/posix-character-classes/-/posix-character-classes-0.1.1.tgz
	https://registry.yarnpkg.com/postcss-calc/-/postcss-calc-9.0.1.tgz
	https://registry.yarnpkg.com/postcss-colormin/-/postcss-colormin-6.1.0.tgz
	https://registry.yarnpkg.com/postcss-convert-values/-/postcss-convert-values-6.1.0.tgz
	https://registry.yarnpkg.com/postcss-discard-comments/-/postcss-discard-comments-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-discard-duplicates/-/postcss-discard-duplicates-6.0.3.tgz
	https://registry.yarnpkg.com/postcss-discard-empty/-/postcss-discard-empty-6.0.3.tgz
	https://registry.yarnpkg.com/postcss-discard-overridden/-/postcss-discard-overridden-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-merge-longhand/-/postcss-merge-longhand-6.0.5.tgz
	https://registry.yarnpkg.com/postcss-merge-rules/-/postcss-merge-rules-6.1.1.tgz
	https://registry.yarnpkg.com/postcss-minify-font-values/-/postcss-minify-font-values-6.1.0.tgz
	https://registry.yarnpkg.com/postcss-minify-gradients/-/postcss-minify-gradients-6.0.3.tgz
	https://registry.yarnpkg.com/postcss-minify-params/-/postcss-minify-params-6.1.0.tgz
	https://registry.yarnpkg.com/postcss-minify-selectors/-/postcss-minify-selectors-6.0.4.tgz
	https://registry.yarnpkg.com/postcss-modules-extract-imports/-/postcss-modules-extract-imports-3.0.0.tgz
	https://registry.yarnpkg.com/postcss-modules-local-by-default/-/postcss-modules-local-by-default-4.0.4.tgz
	https://registry.yarnpkg.com/postcss-modules-scope/-/postcss-modules-scope-3.1.1.tgz
	https://registry.yarnpkg.com/postcss-modules-values/-/postcss-modules-values-4.0.0.tgz
	https://registry.yarnpkg.com/postcss-nesting/-/postcss-nesting-12.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-charset/-/postcss-normalize-charset-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-display-values/-/postcss-normalize-display-values-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-positions/-/postcss-normalize-positions-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-repeat-style/-/postcss-normalize-repeat-style-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-string/-/postcss-normalize-string-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-timing-functions/-/postcss-normalize-timing-functions-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-unicode/-/postcss-normalize-unicode-6.1.0.tgz
	https://registry.yarnpkg.com/postcss-normalize-url/-/postcss-normalize-url-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-normalize-whitespace/-/postcss-normalize-whitespace-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-ordered-values/-/postcss-ordered-values-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-reduce-initial/-/postcss-reduce-initial-6.1.0.tgz
	https://registry.yarnpkg.com/postcss-reduce-transforms/-/postcss-reduce-transforms-6.0.2.tgz
	https://registry.yarnpkg.com/postcss-selector-parser/-/postcss-selector-parser-6.1.2.tgz
	https://registry.yarnpkg.com/postcss-svgo/-/postcss-svgo-6.0.3.tgz
	https://registry.yarnpkg.com/postcss-unique-selectors/-/postcss-unique-selectors-6.0.4.tgz
	https://registry.yarnpkg.com/postcss-value-parser/-/postcss-value-parser-4.2.0.tgz
	https://registry.yarnpkg.com/postcss/-/postcss-7.0.39.tgz
	https://registry.yarnpkg.com/postcss/-/postcss-8.4.38.tgz
	https://registry.yarnpkg.com/prebuild-install/-/prebuild-install-7.1.1.tgz
	https://registry.yarnpkg.com/prebuild-install/-/prebuild-install-7.1.2.tgz
	https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.1.2.tgz
	https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.2.1.tgz
	https://registry.yarnpkg.com/pretty-hrtime/-/pretty-hrtime-1.0.3.tgz
	https://registry.yarnpkg.com/priorityqueuejs/-/priorityqueuejs-1.0.0.tgz
	https://registry.yarnpkg.com/proc-log/-/proc-log-3.0.0.tgz
	https://registry.yarnpkg.com/proc-log/-/proc-log-4.2.0.tgz
	https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-2.0.1.tgz
	https://registry.yarnpkg.com/process/-/process-0.11.10.tgz
	https://registry.yarnpkg.com/progress/-/progress-1.1.8.tgz
	https://registry.yarnpkg.com/progress/-/progress-2.0.3.tgz
	https://registry.yarnpkg.com/promise-retry/-/promise-retry-2.0.1.tgz
	https://registry.yarnpkg.com/proto-list/-/proto-list-1.2.4.tgz
	https://registry.yarnpkg.com/proxy-from-env/-/proxy-from-env-1.1.0.tgz
	https://registry.yarnpkg.com/prr/-/prr-1.0.1.tgz
	https://registry.yarnpkg.com/pseudo-localization/-/pseudo-localization-2.4.0.tgz
	https://registry.yarnpkg.com/pseudomap/-/pseudomap-1.0.2.tgz
	https://registry.yarnpkg.com/psl/-/psl-1.8.0.tgz
	https://registry.yarnpkg.com/psl/-/psl-1.9.0.tgz
	https://registry.yarnpkg.com/pump/-/pump-1.0.2.tgz
	https://registry.yarnpkg.com/pump/-/pump-2.0.1.tgz
	https://registry.yarnpkg.com/pump/-/pump-3.0.0.tgz
	https://registry.yarnpkg.com/pumpify/-/pumpify-1.5.1.tgz
	https://registry.yarnpkg.com/punycode.js/-/punycode.js-2.3.1.tgz
	https://registry.yarnpkg.com/punycode/-/punycode-2.1.1.tgz
	https://registry.yarnpkg.com/punycode/-/punycode-2.3.0.tgz
	https://registry.yarnpkg.com/punycode/-/punycode-2.3.1.tgz
	https://registry.yarnpkg.com/qs/-/qs-6.13.0.tgz
	https://registry.yarnpkg.com/querystringify/-/querystringify-2.2.0.tgz
	https://registry.yarnpkg.com/queue-tick/-/queue-tick-1.0.1.tgz
	https://registry.yarnpkg.com/queue/-/queue-3.1.0.tgz
	https://registry.yarnpkg.com/queue/-/queue-4.5.0.tgz
	https://registry.yarnpkg.com/queue/-/queue-6.0.2.tgz
	https://registry.yarnpkg.com/quick-lru/-/quick-lru-5.1.1.tgz
	https://registry.yarnpkg.com/randombytes/-/randombytes-2.1.0.tgz
	https://registry.yarnpkg.com/rc/-/rc-1.2.8.tgz
	https://registry.yarnpkg.com/rcedit/-/rcedit-0.3.0.tgz
	https://registry.yarnpkg.com/rcedit/-/rcedit-1.1.0.tgz
	https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-1.0.1.tgz
	https://registry.yarnpkg.com/read-pkg/-/read-pkg-1.1.0.tgz
	https://registry.yarnpkg.com/read-pkg/-/read-pkg-3.0.0.tgz
	https://registry.yarnpkg.com/read/-/read-1.0.7.tgz
	https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.0.34.tgz
	https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.7.tgz
	https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.8.tgz
	https://registry.yarnpkg.com/readable-stream/-/readable-stream-3.6.0.tgz
	https://registry.yarnpkg.com/readable-web-to-node-stream/-/readable-web-to-node-stream-3.0.2.tgz
	https://registry.yarnpkg.com/readdirp/-/readdirp-2.2.1.tgz
	https://registry.yarnpkg.com/readdirp/-/readdirp-3.5.0.tgz
	https://registry.yarnpkg.com/readdirp/-/readdirp-3.6.0.tgz
	https://registry.yarnpkg.com/rechoir/-/rechoir-0.6.2.tgz
	https://registry.yarnpkg.com/rechoir/-/rechoir-0.8.0.tgz
	https://registry.yarnpkg.com/regex-not/-/regex-not-1.0.2.tgz
	https://registry.yarnpkg.com/remove-bom-buffer/-/remove-bom-buffer-3.0.0.tgz
	https://registry.yarnpkg.com/remove-bom-stream/-/remove-bom-stream-1.2.0.tgz
	https://registry.yarnpkg.com/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz
	https://registry.yarnpkg.com/repeat-element/-/repeat-element-1.1.3.tgz
	https://registry.yarnpkg.com/repeat-string/-/repeat-string-1.6.1.tgz
	https://registry.yarnpkg.com/replace-ext/-/replace-ext-0.0.1.tgz
	https://registry.yarnpkg.com/replace-ext/-/replace-ext-1.0.1.tgz
	https://registry.yarnpkg.com/replace-ext/-/replace-ext-2.0.0.tgz
	https://registry.yarnpkg.com/replace-homedir/-/replace-homedir-1.0.0.tgz
	https://registry.yarnpkg.com/replacestream/-/replacestream-4.0.3.tgz
	https://registry.yarnpkg.com/request-light/-/request-light-0.7.0.tgz
	https://registry.yarnpkg.com/request-light/-/request-light-0.8.0.tgz
	https://registry.yarnpkg.com/require-directory/-/require-directory-2.1.1.tgz
	https://registry.yarnpkg.com/require-from-string/-/require-from-string-2.0.2.tgz
	https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-1.0.1.tgz
	https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-2.0.0.tgz
	https://registry.yarnpkg.com/requires-port/-/requires-port-1.0.0.tgz
	https://registry.yarnpkg.com/resolve-alpn/-/resolve-alpn-1.2.1.tgz
	https://registry.yarnpkg.com/resolve-cwd/-/resolve-cwd-3.0.0.tgz
	https://registry.yarnpkg.com/resolve-dir/-/resolve-dir-1.0.1.tgz
	https://registry.yarnpkg.com/resolve-from/-/resolve-from-4.0.0.tgz
	https://registry.yarnpkg.com/resolve-from/-/resolve-from-5.0.0.tgz
	https://registry.yarnpkg.com/resolve-options/-/resolve-options-1.1.0.tgz
	https://registry.yarnpkg.com/resolve-path/-/resolve-path-1.4.0.tgz
	https://registry.yarnpkg.com/resolve-url/-/resolve-url-0.2.1.tgz
	https://registry.yarnpkg.com/resolve/-/resolve-1.19.0.tgz
	https://registry.yarnpkg.com/resolve/-/resolve-1.20.0.tgz
	https://registry.yarnpkg.com/resolve/-/resolve-1.22.1.tgz
	https://registry.yarnpkg.com/responselike/-/responselike-2.0.1.tgz
	https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-4.0.0.tgz
	https://registry.yarnpkg.com/ret/-/ret-0.1.15.tgz
	https://registry.yarnpkg.com/retry/-/retry-0.12.0.tgz
	https://registry.yarnpkg.com/reusify/-/reusify-1.0.4.tgz
	https://registry.yarnpkg.com/rimraf/-/rimraf-2.6.3.tgz
	https://registry.yarnpkg.com/rimraf/-/rimraf-2.7.1.tgz
	https://registry.yarnpkg.com/rimraf/-/rimraf-3.0.2.tgz
	https://registry.yarnpkg.com/roarr/-/roarr-2.15.4.tgz
	https://registry.yarnpkg.com/rrweb-cssom/-/rrweb-cssom-0.6.0.tgz
	https://registry.yarnpkg.com/run-parallel/-/run-parallel-1.1.10.tgz
	https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.2.tgz
	https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.2.1.tgz
	https://registry.yarnpkg.com/safe-regex/-/safe-regex-1.1.0.tgz
	https://registry.yarnpkg.com/safer-buffer/-/safer-buffer-2.1.2.tgz
	https://registry.yarnpkg.com/sax/-/sax-1.2.4.tgz
	https://registry.yarnpkg.com/saxes/-/saxes-6.0.0.tgz
	https://registry.yarnpkg.com/schema-utils/-/schema-utils-3.0.0.tgz
	https://registry.yarnpkg.com/schema-utils/-/schema-utils-3.3.0.tgz
	https://registry.yarnpkg.com/schema-utils/-/schema-utils-4.0.0.tgz
	https://registry.yarnpkg.com/semaphore/-/semaphore-1.1.0.tgz
	https://registry.yarnpkg.com/semver-compare/-/semver-compare-1.0.0.tgz
	https://registry.yarnpkg.com/semver-greatest-satisfied-range/-/semver-greatest-satisfied-range-1.1.0.tgz
	https://registry.yarnpkg.com/semver/-/semver-4.3.6.tgz
	https://registry.yarnpkg.com/semver/-/semver-5.7.2.tgz
	https://registry.yarnpkg.com/semver/-/semver-6.3.1.tgz
	https://registry.yarnpkg.com/semver/-/semver-7.5.2.tgz
	https://registry.yarnpkg.com/semver/-/semver-7.5.4.tgz
	https://registry.yarnpkg.com/semver/-/semver-7.6.0.tgz
	https://registry.yarnpkg.com/semver/-/semver-7.6.2.tgz
	https://registry.yarnpkg.com/semver/-/semver-7.6.3.tgz
	https://registry.yarnpkg.com/serialize-error/-/serialize-error-7.0.1.tgz
	https://registry.yarnpkg.com/serialize-javascript/-/serialize-javascript-6.0.0.tgz
	https://registry.yarnpkg.com/serialize-javascript/-/serialize-javascript-6.0.2.tgz
	https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz
	https://registry.yarnpkg.com/set-function-length/-/set-function-length-1.2.2.tgz
	https://registry.yarnpkg.com/set-value/-/set-value-2.0.1.tgz
	https://registry.yarnpkg.com/setimmediate/-/setimmediate-1.0.5.tgz
	https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.1.0.tgz
	https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.2.0.tgz
	https://registry.yarnpkg.com/shallow-clone/-/shallow-clone-3.0.1.tgz
	https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz
	https://registry.yarnpkg.com/shebang-command/-/shebang-command-2.0.0.tgz
	https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz
	https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-3.0.0.tgz
	https://registry.yarnpkg.com/shell-quote/-/shell-quote-1.7.3.tgz
	https://registry.yarnpkg.com/side-channel/-/side-channel-1.0.6.tgz
	https://registry.yarnpkg.com/sigmund/-/sigmund-1.0.1.tgz
	https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.3.tgz
	https://registry.yarnpkg.com/signal-exit/-/signal-exit-4.1.0.tgz
	https://registry.yarnpkg.com/simple-concat/-/simple-concat-1.0.1.tgz
	https://registry.yarnpkg.com/simple-get/-/simple-get-4.0.1.tgz
	https://registry.yarnpkg.com/sinon-test/-/sinon-test-3.1.3.tgz
	https://registry.yarnpkg.com/sinon/-/sinon-12.0.1.tgz
	https://registry.yarnpkg.com/slash/-/slash-4.0.0.tgz
	https://registry.yarnpkg.com/slashes/-/slashes-3.0.12.tgz
	https://registry.yarnpkg.com/smart-buffer/-/smart-buffer-4.2.0.tgz
	https://registry.yarnpkg.com/snapdragon-node/-/snapdragon-node-2.1.1.tgz
	https://registry.yarnpkg.com/snapdragon-util/-/snapdragon-util-3.0.1.tgz
	https://registry.yarnpkg.com/snapdragon/-/snapdragon-0.8.2.tgz
	https://registry.yarnpkg.com/socks-proxy-agent/-/socks-proxy-agent-8.0.4.tgz
	https://registry.yarnpkg.com/socks/-/socks-2.8.3.tgz
	https://registry.yarnpkg.com/source-map-js/-/source-map-js-1.2.0.tgz
	https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.5.3.tgz
	https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.6.0.tgz
	https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.3.3.tgz
	https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.5.21.tgz
	https://registry.yarnpkg.com/source-map-url/-/source-map-url-0.4.0.tgz
	https://registry.yarnpkg.com/source-map/-/source-map-0.1.32.tgz
	https://registry.yarnpkg.com/source-map/-/source-map-0.5.7.tgz
	https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz
	https://registry.yarnpkg.com/source-map/-/source-map-0.7.4.tgz
	https://registry.yarnpkg.com/sparkles/-/sparkles-1.0.1.tgz
	https://registry.yarnpkg.com/spdx-correct/-/spdx-correct-3.1.1.tgz
	https://registry.yarnpkg.com/spdx-exceptions/-/spdx-exceptions-2.2.0.tgz
	https://registry.yarnpkg.com/spdx-exceptions/-/spdx-exceptions-2.3.0.tgz
	https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-3.0.1.tgz
	https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-4.0.0.tgz
	https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-3.0.5.tgz
	https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-3.0.7.tgz
	https://registry.yarnpkg.com/split-string/-/split-string-3.1.0.tgz
	https://registry.yarnpkg.com/split/-/split-0.3.3.tgz
	https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.0.3.tgz
	https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.1.2.tgz
	https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.1.3.tgz
	https://registry.yarnpkg.com/ssri/-/ssri-10.0.6.tgz
	https://registry.yarnpkg.com/stable/-/stable-0.1.8.tgz
	https://registry.yarnpkg.com/stack-trace/-/stack-trace-0.0.10.tgz
	https://registry.yarnpkg.com/static-extend/-/static-extend-0.1.2.tgz
	https://registry.yarnpkg.com/statuses/-/statuses-1.5.0.tgz
	https://registry.yarnpkg.com/statuses/-/statuses-2.0.1.tgz
	https://registry.yarnpkg.com/stdin-discarder/-/stdin-discarder-0.1.0.tgz
	https://registry.yarnpkg.com/stoppable/-/stoppable-1.1.0.tgz
	https://registry.yarnpkg.com/straightforward/-/straightforward-4.2.2.tgz
	https://registry.yarnpkg.com/stream-combiner/-/stream-combiner-0.0.4.tgz
	https://registry.yarnpkg.com/stream-exhaust/-/stream-exhaust-1.0.2.tgz
	https://registry.yarnpkg.com/stream-shift/-/stream-shift-1.0.1.tgz
	https://registry.yarnpkg.com/stream-to-array/-/stream-to-array-2.3.0.tgz
	https://registry.yarnpkg.com/streamfilter/-/streamfilter-1.0.5.tgz
	https://registry.yarnpkg.com/streamifier/-/streamifier-0.1.1.tgz
	https://registry.yarnpkg.com/streamx/-/streamx-2.18.0.tgz
	https://registry.yarnpkg.com/string-width/-/string-width-1.0.2.tgz
	https://registry.yarnpkg.com/string-width/-/string-width-4.2.3.tgz
	https://registry.yarnpkg.com/string-width/-/string-width-5.1.2.tgz
	https://registry.yarnpkg.com/string-width/-/string-width-6.1.0.tgz
	https://registry.yarnpkg.com/string.prototype.padend/-/string.prototype.padend-3.1.1.tgz
	https://registry.yarnpkg.com/string.prototype.trimend/-/string.prototype.trimend-1.0.3.tgz
	https://registry.yarnpkg.com/string.prototype.trimstart/-/string.prototype.trimstart-1.0.3.tgz
	https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz
	https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.1.1.tgz
	https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.3.0.tgz
	https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-3.0.1.tgz
	https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-6.0.1.tgz
	https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-7.1.0.tgz
	https://registry.yarnpkg.com/strip-bom-buf/-/strip-bom-buf-1.0.0.tgz
	https://registry.yarnpkg.com/strip-bom-stream/-/strip-bom-stream-2.0.0.tgz
	https://registry.yarnpkg.com/strip-bom-string/-/strip-bom-string-1.0.0.tgz
	https://registry.yarnpkg.com/strip-bom/-/strip-bom-2.0.0.tgz
	https://registry.yarnpkg.com/strip-bom/-/strip-bom-3.0.0.tgz
	https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-2.0.1.tgz
	https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-3.1.1.tgz
	https://registry.yarnpkg.com/strtok3/-/strtok3-6.3.0.tgz
	https://registry.yarnpkg.com/style-loader/-/style-loader-3.3.2.tgz
	https://registry.yarnpkg.com/stylehacks/-/stylehacks-6.1.1.tgz
	https://registry.yarnpkg.com/subarg/-/subarg-1.0.0.tgz
	https://registry.yarnpkg.com/sumchecker/-/sumchecker-3.0.1.tgz
	https://registry.yarnpkg.com/supports-color/-/supports-color-2.0.0.tgz
	https://registry.yarnpkg.com/supports-color/-/supports-color-5.5.0.tgz
	https://registry.yarnpkg.com/supports-color/-/supports-color-7.1.0.tgz
	https://registry.yarnpkg.com/supports-color/-/supports-color-7.2.0.tgz
	https://registry.yarnpkg.com/supports-color/-/supports-color-8.1.1.tgz
	https://registry.yarnpkg.com/supports-color/-/supports-color-9.4.0.tgz
	https://registry.yarnpkg.com/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz
	https://registry.yarnpkg.com/sver-compat/-/sver-compat-1.5.0.tgz
	https://registry.yarnpkg.com/svgo/-/svgo-2.8.0.tgz
	https://registry.yarnpkg.com/svgo/-/svgo-3.3.2.tgz
	https://registry.yarnpkg.com/symbol-tree/-/symbol-tree-3.2.4.tgz
	https://registry.yarnpkg.com/synckit/-/synckit-0.9.1.tgz
	https://registry.yarnpkg.com/tapable/-/tapable-2.2.0.tgz
	https://registry.yarnpkg.com/tar-fs/-/tar-fs-2.1.1.tgz
	https://registry.yarnpkg.com/tar-fs/-/tar-fs-3.0.6.tgz
	https://registry.yarnpkg.com/tar-stream/-/tar-stream-2.2.0.tgz
	https://registry.yarnpkg.com/tar-stream/-/tar-stream-3.1.6.tgz
	https://registry.yarnpkg.com/tar/-/tar-2.2.2.tgz
	https://registry.yarnpkg.com/tar/-/tar-6.2.1.tgz
	https://registry.yarnpkg.com/tas-client-umd/-/tas-client-umd-0.2.0.tgz
	https://registry.yarnpkg.com/tas-client/-/tas-client-0.2.33.tgz
	https://registry.yarnpkg.com/teex/-/teex-1.0.1.tgz
	https://registry.yarnpkg.com/temp/-/temp-0.8.4.tgz
	https://registry.yarnpkg.com/ternary-stream/-/ternary-stream-3.0.0.tgz
	https://registry.yarnpkg.com/terser-webpack-plugin/-/terser-webpack-plugin-5.3.10.tgz
	https://registry.yarnpkg.com/terser/-/terser-5.30.0.tgz
	https://registry.yarnpkg.com/test-exclude/-/test-exclude-6.0.0.tgz
	https://registry.yarnpkg.com/text-decoder/-/text-decoder-1.1.0.tgz
	https://registry.yarnpkg.com/text-table/-/text-table-0.2.0.tgz
	https://registry.yarnpkg.com/textextensions/-/textextensions-1.0.2.tgz
	https://registry.yarnpkg.com/through/-/through-2.3.8.tgz
	https://registry.yarnpkg.com/through2-filter/-/through2-filter-3.0.0.tgz
	https://registry.yarnpkg.com/through2/-/through2-0.4.2.tgz
	https://registry.yarnpkg.com/through2/-/through2-2.0.3.tgz
	https://registry.yarnpkg.com/through2/-/through2-2.0.5.tgz
	https://registry.yarnpkg.com/through2/-/through2-3.0.2.tgz
	https://registry.yarnpkg.com/through2/-/through2-4.0.2.tgz
	https://registry.yarnpkg.com/time-stamp/-/time-stamp-1.1.0.tgz
	https://registry.yarnpkg.com/timers-ext/-/timers-ext-0.1.7.tgz
	https://registry.yarnpkg.com/tmp/-/tmp-0.0.33.tgz
	https://registry.yarnpkg.com/tmp/-/tmp-0.2.1.tgz
	https://registry.yarnpkg.com/tmp/-/tmp-0.2.3.tgz
	https://registry.yarnpkg.com/to-absolute-glob/-/to-absolute-glob-2.0.2.tgz
	https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-2.0.0.tgz
	https://registry.yarnpkg.com/to-object-path/-/to-object-path-0.3.0.tgz
	https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-2.1.1.tgz
	https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-5.0.1.tgz
	https://registry.yarnpkg.com/to-regex/-/to-regex-3.0.2.tgz
	https://registry.yarnpkg.com/to-through/-/to-through-2.0.0.tgz
	https://registry.yarnpkg.com/toidentifier/-/toidentifier-1.0.1.tgz
	https://registry.yarnpkg.com/token-types/-/token-types-4.2.0.tgz
	https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-4.1.3.tgz
	https://registry.yarnpkg.com/tr46/-/tr46-0.0.3.tgz
	https://registry.yarnpkg.com/tr46/-/tr46-4.1.1.tgz
	https://registry.yarnpkg.com/tree-kill/-/tree-kill-1.2.2.tgz
	https://registry.yarnpkg.com/tree-sitter/-/tree-sitter-0.20.6.tgz
	https://registry.yarnpkg.com/tree-sitter-typescript/-/tree-sitter-typescript-0.20.5.tgz
	https://registry.yarnpkg.com/tree-sitter/-/tree-sitter-0.20.6.tgz
	https://registry.yarnpkg.com/ts-api-utils/-/ts-api-utils-1.3.0.tgz
	https://registry.yarnpkg.com/ts-loader/-/ts-loader-9.5.1.tgz
	https://registry.yarnpkg.com/ts-morph/-/ts-morph-19.0.0.tgz
	https://registry.yarnpkg.com/ts-node/-/ts-node-10.9.1.tgz
	https://registry.yarnpkg.com/tsec/-/tsec-0.2.7.tgz
	https://registry.yarnpkg.com/tslib/-/tslib-1.14.1.tgz
	https://registry.yarnpkg.com/tslib/-/tslib-2.6.3.tgz
	https://registry.yarnpkg.com/tsscmp/-/tsscmp-1.0.6.tgz
	https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz
	https://registry.yarnpkg.com/tunnel/-/tunnel-0.0.6.tgz
	https://registry.yarnpkg.com/type-check/-/type-check-0.3.2.tgz
	https://registry.yarnpkg.com/type-check/-/type-check-0.4.0.tgz
	https://registry.yarnpkg.com/type-detect/-/type-detect-4.0.8.tgz
	https://registry.yarnpkg.com/type-fest/-/type-fest-0.13.1.tgz
	https://registry.yarnpkg.com/type-is/-/type-is-1.6.18.tgz
	https://registry.yarnpkg.com/type/-/type-1.2.0.tgz
	https://registry.yarnpkg.com/type/-/type-2.1.0.tgz
	https://registry.yarnpkg.com/type/-/type-2.7.2.tgz
	https://registry.yarnpkg.com/typed-rest-client/-/typed-rest-client-1.8.11.tgz
	https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz
	https://registry.yarnpkg.com/typescript-eslint/-/typescript-eslint-8.8.0.tgz
	https://registry.yarnpkg.com/typescript/-/typescript-4.9.5.tgz
	https://registry.yarnpkg.com/typescript/-/typescript-5.5.4.tgz
	https://registry.yarnpkg.com/typescript/-/typescript-5.6.3.tgz
	https://registry.yarnpkg.com/typescript/-/typescript-5.7.0-dev.20241021.tgz
	https://registry.yarnpkg.com/typical/-/typical-4.0.0.tgz
	https://registry.yarnpkg.com/uc.micro/-/uc.micro-1.0.6.tgz
	https://registry.yarnpkg.com/uc.micro/-/uc.micro-2.1.0.tgz
	https://registry.yarnpkg.com/unc-path-regex/-/unc-path-regex-0.1.2.tgz
	https://registry.yarnpkg.com/underscore/-/underscore-1.13.7.tgz
	https://registry.yarnpkg.com/undertaker-registry/-/undertaker-registry-1.0.1.tgz
	https://registry.yarnpkg.com/undertaker/-/undertaker-1.3.0.tgz
	https://registry.yarnpkg.com/undici-types/-/undici-types-5.26.5.tgz
	https://registry.yarnpkg.com/union-value/-/union-value-1.0.1.tgz
	https://registry.yarnpkg.com/unique-filename/-/unique-filename-3.0.0.tgz
	https://registry.yarnpkg.com/unique-slug/-/unique-slug-4.0.0.tgz
	https://registry.yarnpkg.com/unique-stream/-/unique-stream-2.3.1.tgz
	https://registry.yarnpkg.com/universal-user-agent/-/universal-user-agent-6.0.0.tgz
	https://registry.yarnpkg.com/universalify/-/universalify-0.1.2.tgz
	https://registry.yarnpkg.com/universalify/-/universalify-0.2.0.tgz
	https://registry.yarnpkg.com/universalify/-/universalify-2.0.0.tgz
	https://registry.yarnpkg.com/universalify/-/universalify-2.0.1.tgz
	https://registry.yarnpkg.com/unset-value/-/unset-value-1.0.0.tgz
	https://registry.yarnpkg.com/upath/-/upath-1.2.0.tgz
	https://registry.yarnpkg.com/update-browserslist-db/-/update-browserslist-db-1.1.1.tgz
	https://registry.yarnpkg.com/uri-js/-/uri-js-4.4.1.tgz
	https://registry.yarnpkg.com/urix/-/urix-0.1.0.tgz
	https://registry.yarnpkg.com/url-join/-/url-join-4.0.1.tgz
	https://registry.yarnpkg.com/url-parse/-/url-parse-1.5.10.tgz
	https://registry.yarnpkg.com/use/-/use-3.1.1.tgz
	https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz
	https://registry.yarnpkg.com/util/-/util-0.12.5.tgz
	https://registry.yarnpkg.com/uuid/-/uuid-8.3.1.tgz
	https://registry.yarnpkg.com/uuid/-/uuid-8.3.2.tgz
	https://registry.yarnpkg.com/uuid/-/uuid-9.0.1.tgz
	https://registry.yarnpkg.com/v8-compile-cache-lib/-/v8-compile-cache-lib-3.0.1.tgz
	https://registry.yarnpkg.com/v8-inspect-profiler/-/v8-inspect-profiler-0.1.1.tgz
	https://registry.yarnpkg.com/v8-to-istanbul/-/v8-to-istanbul-9.2.0.tgz
	https://registry.yarnpkg.com/v8flags/-/v8flags-3.2.0.tgz
	https://registry.yarnpkg.com/validate-npm-package-license/-/validate-npm-package-license-3.0.4.tgz
	https://registry.yarnpkg.com/value-or-function/-/value-or-function-3.0.0.tgz
	https://registry.yarnpkg.com/vary/-/vary-1.1.2.tgz
	https://registry.yarnpkg.com/vinyl-file/-/vinyl-file-3.0.0.tgz
	https://registry.yarnpkg.com/vinyl-fs/-/vinyl-fs-3.0.3.tgz
	https://registry.yarnpkg.com/vinyl-sourcemap/-/vinyl-sourcemap-1.1.0.tgz
	https://registry.yarnpkg.com/vinyl/-/vinyl-1.2.0.tgz
	https://registry.yarnpkg.com/vinyl/-/vinyl-2.0.2.tgz
	https://registry.yarnpkg.com/vinyl/-/vinyl-2.1.0.tgz
	https://registry.yarnpkg.com/vinyl/-/vinyl-2.2.0.tgz
	https://registry.yarnpkg.com/vinyl/-/vinyl-2.2.1.tgz
	https://registry.yarnpkg.com/vinyl/-/vinyl-3.0.0.tgz
	https://registry.yarnpkg.com/vscode-codicons/-/vscode-codicons-0.0.14.tgz
	https://registry.yarnpkg.com/vscode-css-languageservice/-/vscode-css-languageservice-6.3.1.tgz
	https://registry.yarnpkg.com/vscode-grammar-updater/-/vscode-grammar-updater-1.1.0.tgz
	https://registry.yarnpkg.com/vscode-gulp-watch/-/vscode-gulp-watch-5.0.3.tgz
	https://registry.yarnpkg.com/vscode-html-languageservice/-/vscode-html-languageservice-5.3.1.tgz
	https://registry.yarnpkg.com/vscode-json-languageservice/-/vscode-json-languageservice-5.4.1.tgz
	https://registry.yarnpkg.com/vscode-jsonrpc/-/vscode-jsonrpc-8.0.2.tgz
	https://registry.yarnpkg.com/vscode-jsonrpc/-/vscode-jsonrpc-8.1.0.tgz
	https://registry.yarnpkg.com/vscode-jsonrpc/-/vscode-jsonrpc-9.0.0-next.6.tgz
	https://registry.yarnpkg.com/vscode-languageclient/-/vscode-languageclient-10.0.0-next.13.tgz
	https://registry.yarnpkg.com/vscode-languageclient/-/vscode-languageclient-8.0.2.tgz
	https://registry.yarnpkg.com/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.2.tgz
	https://registry.yarnpkg.com/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.3.tgz
	https://registry.yarnpkg.com/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.6-next.11.tgz
	https://registry.yarnpkg.com/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.11.tgz
	https://registry.yarnpkg.com/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.12.tgz
	https://registry.yarnpkg.com/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.3.tgz
	https://registry.yarnpkg.com/vscode-languageserver-types/-/vscode-languageserver-types-3.17.2.tgz
	https://registry.yarnpkg.com/vscode-languageserver-types/-/vscode-languageserver-types-3.17.3.tgz
	https://registry.yarnpkg.com/vscode-languageserver-types/-/vscode-languageserver-types-3.17.5.tgz
	https://registry.yarnpkg.com/vscode-languageserver-types/-/vscode-languageserver-types-3.17.6-next.5.tgz
	https://registry.yarnpkg.com/vscode-languageserver/-/vscode-languageserver-10.0.0-next.11.tgz
	https://registry.yarnpkg.com/vscode-languageserver/-/vscode-languageserver-8.1.0.tgz
	https://registry.yarnpkg.com/vscode-markdown-languageserver/-/vscode-markdown-languageserver-0.5.0-alpha.8.tgz
	https://registry.yarnpkg.com/vscode-markdown-languageservice/-/vscode-markdown-languageservice-0.3.0-alpha.3.tgz
	https://registry.yarnpkg.com/vscode-markdown-languageservice/-/vscode-markdown-languageservice-0.5.0-alpha.7.tgz
	https://registry.yarnpkg.com/vscode-oniguruma/-/vscode-oniguruma-1.7.0.tgz
	https://registry.yarnpkg.com/vscode-regexpp/-/vscode-regexpp-3.1.0.tgz
	https://registry.yarnpkg.com/vscode-tas-client/-/vscode-tas-client-0.1.84.tgz
	https://registry.yarnpkg.com/vscode-textmate/-/vscode-textmate-9.1.0.tgz
	https://registry.yarnpkg.com/vscode-universal-bundler/-/vscode-universal-bundler-0.1.3.tgz
	https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-2.0.0.tgz
	https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-2.1.2.tgz
	https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-3.0.2.tgz
	https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-3.0.3.tgz
	https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-3.0.6.tgz
	https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-3.0.8.tgz
	https://registry.yarnpkg.com/w3c-xmlserializer/-/w3c-xmlserializer-4.0.0.tgz
	https://registry.yarnpkg.com/warnings-to-errors-webpack-plugin/-/warnings-to-errors-webpack-plugin-2.3.0.tgz
	https://registry.yarnpkg.com/watch/-/watch-1.0.2.tgz
	https://registry.yarnpkg.com/watchpack/-/watchpack-2.4.1.tgz
	https://registry.yarnpkg.com/web-tree-sitter/-/web-tree-sitter-0.20.8.tgz
	https://registry.yarnpkg.com/webidl-conversions/-/webidl-conversions-3.0.1.tgz
	https://registry.yarnpkg.com/webidl-conversions/-/webidl-conversions-7.0.0.tgz
	https://registry.yarnpkg.com/webpack-cli/-/webpack-cli-5.1.4.tgz
	https://registry.yarnpkg.com/webpack-merge/-/webpack-merge-5.8.0.tgz
	https://registry.yarnpkg.com/webpack-sources/-/webpack-sources-3.2.3.tgz
	https://registry.yarnpkg.com/webpack-stream/-/webpack-stream-7.0.0.tgz
	https://registry.yarnpkg.com/webpack/-/webpack-5.94.0.tgz
	https://registry.yarnpkg.com/whatwg-encoding/-/whatwg-encoding-2.0.0.tgz
	https://registry.yarnpkg.com/whatwg-mimetype/-/whatwg-mimetype-3.0.0.tgz
	https://registry.yarnpkg.com/whatwg-url/-/whatwg-url-12.0.1.tgz
	https://registry.yarnpkg.com/whatwg-url/-/whatwg-url-5.0.0.tgz
	https://registry.yarnpkg.com/which-module/-/which-module-1.0.0.tgz
	https://registry.yarnpkg.com/which-module/-/which-module-2.0.0.tgz
	https://registry.yarnpkg.com/which-pm/-/which-pm-2.1.1.tgz
	https://registry.yarnpkg.com/which-typed-array/-/which-typed-array-1.1.11.tgz
	https://registry.yarnpkg.com/which/-/which-1.3.1.tgz
	https://registry.yarnpkg.com/which/-/which-2.0.2.tgz
	https://registry.yarnpkg.com/which/-/which-4.0.0.tgz
	https://registry.yarnpkg.com/wildcard/-/wildcard-2.0.0.tgz
	https://registry.yarnpkg.com/windows-foreground-love/-/windows-foreground-love-0.5.0.tgz
	https://registry.yarnpkg.com/word-wrap/-/word-wrap-1.2.4.tgz
	https://registry.yarnpkg.com/word-wrap/-/word-wrap-1.2.5.tgz
	https://registry.yarnpkg.com/workerpool/-/workerpool-6.2.1.tgz
	https://registry.yarnpkg.com/workerpool/-/workerpool-6.5.0.tgz
	https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-2.1.0.tgz
	https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-6.2.0.tgz
	https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-7.0.0.tgz
	https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-8.1.0.tgz
	https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz
	https://registry.yarnpkg.com/ws/-/ws-7.5.10.tgz
	https://registry.yarnpkg.com/ws/-/ws-8.17.1.tgz
	https://registry.yarnpkg.com/xml-name-validator/-/xml-name-validator-4.0.0.tgz
	https://registry.yarnpkg.com/xml/-/xml-1.0.1.tgz
	https://registry.yarnpkg.com/xml2js/-/xml2js-0.4.23.tgz
	https://registry.yarnpkg.com/xml2js/-/xml2js-0.5.0.tgz
	https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-11.0.1.tgz
	https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-15.1.1.tgz
	https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-9.0.7.tgz
	https://registry.yarnpkg.com/xmlchars/-/xmlchars-2.2.0.tgz
	https://registry.yarnpkg.com/xtend/-/xtend-2.1.2.tgz
	https://registry.yarnpkg.com/xtend/-/xtend-4.0.2.tgz
	https://registry.yarnpkg.com/y18n/-/y18n-3.2.2.tgz
	https://registry.yarnpkg.com/y18n/-/y18n-4.0.1.tgz
	https://registry.yarnpkg.com/y18n/-/y18n-5.0.8.tgz
	https://registry.yarnpkg.com/yallist/-/yallist-2.1.2.tgz
	https://registry.yarnpkg.com/yallist/-/yallist-4.0.0.tgz
	https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-18.1.3.tgz
	https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-20.2.4.tgz
	https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-21.1.1.tgz
	https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-5.0.1.tgz
	https://registry.yarnpkg.com/yargs-unparser/-/yargs-unparser-2.0.0.tgz
	https://registry.yarnpkg.com/yargs/-/yargs-15.4.1.tgz
	https://registry.yarnpkg.com/yargs/-/yargs-16.2.0.tgz
	https://registry.yarnpkg.com/yargs/-/yargs-17.7.2.tgz
	https://registry.yarnpkg.com/yargs/-/yargs-7.1.2.tgz
	https://registry.yarnpkg.com/yaserver/-/yaserver-0.4.0.tgz
	https://registry.yarnpkg.com/yauzl/-/yauzl-2.10.0.tgz
	https://registry.yarnpkg.com/yauzl/-/yauzl-2.9.1.tgz
	https://registry.yarnpkg.com/yauzl/-/yauzl-3.1.1.tgz
	https://registry.yarnpkg.com/yazl/-/yazl-2.4.3.tgz
	https://registry.yarnpkg.com/yazl/-/yazl-2.5.1.tgz
	https://registry.yarnpkg.com/ylru/-/ylru-1.2.1.tgz
	https://registry.yarnpkg.com/yn/-/yn-3.1.1.tgz
	https://registry.yarnpkg.com/yocto-queue/-/yocto-queue-0.1.0.tgz

	https://registry.yarnpkg.com/shrinkpack/-/shrinkpack-0.20.0.tgz
	https://registry.yarnpkg.com/@eslint/eslintrc/-/eslintrc-1.4.1.tgz -> @eslint-eslintrc-1.4.1.tgz
	https://registry.yarnpkg.com/@gar/promisify/-/promisify-1.1.3.tgz -> @gar-promisify-1.1.3.tgz
	https://registry.yarnpkg.com/@humanwhocodes/config-array/-/config-array-0.9.5.tgz -> @humanwhocodes-config-array-0.9.5.tgz
	https://registry.yarnpkg.com/@humanwhocodes/object-schema/-/object-schema-1.2.1.tgz -> @humanwhocodes-object-schema-1.2.1.tgz
	https://registry.yarnpkg.com/@nodelib/fs.scandir/-/fs.scandir-2.1.5.tgz -> @nodelib-fs.scandir-2.1.5.tgz
	https://registry.yarnpkg.com/@nodelib/fs.stat/-/fs.stat-2.0.5.tgz -> @nodelib-fs.stat-2.0.5.tgz
	https://registry.yarnpkg.com/@nodelib/fs.walk/-/fs.walk-1.2.8.tgz -> @nodelib-fs.walk-1.2.8.tgz
	https://registry.yarnpkg.com/@npmcli/fs/-/fs-1.1.1.tgz -> @npmcli-fs-1.1.1.tgz
	https://registry.yarnpkg.com/@npmcli/git/-/git-2.1.0.tgz -> @npmcli-git-2.1.0.tgz
	https://registry.yarnpkg.com/@npmcli/installed-package-contents/-/installed-package-contents-1.0.7.tgz -> @npmcli-installed-package-contents-1.0.7.tgz
	https://registry.yarnpkg.com/@npmcli/move-file/-/move-file-1.1.2.tgz -> @npmcli-move-file-1.1.2.tgz
	https://registry.yarnpkg.com/@npmcli/node-gyp/-/node-gyp-1.0.3.tgz -> @npmcli-node-gyp-1.0.3.tgz
	https://registry.yarnpkg.com/@npmcli/promise-spawn/-/promise-spawn-1.3.2.tgz -> @npmcli-promise-spawn-1.3.2.tgz
	https://registry.yarnpkg.com/@npmcli/run-script/-/run-script-2.0.0.tgz -> @npmcli-run-script-2.0.0.tgz
	https://registry.yarnpkg.com/@tootallnate/once/-/once-1.1.2.tgz -> @tootallnate-once-1.1.2.tgz
	https://registry.yarnpkg.com/@types/gunzip-maybe/-/gunzip-maybe-1.4.0.tgz -> @types-gunzip-maybe-1.4.0.tgz
	https://registry.yarnpkg.com/@types/json-schema/-/json-schema-7.0.15.tgz -> @types-json-schema-7.0.15.tgz
	https://registry.yarnpkg.com/@types/json5/-/json5-0.0.29.tgz -> @types-json5-0.0.29.tgz
	https://registry.yarnpkg.com/@types/node-fetch/-/node-fetch-2.6.11.tgz -> @types-node-fetch-2.6.11.tgz
	https://registry.yarnpkg.com/@types/node/-/node-17.0.5.tgz -> @types-node-17.0.5.tgz
	https://registry.yarnpkg.com/@types/npm-package-arg/-/npm-package-arg-6.1.4.tgz -> @types-npm-package-arg-6.1.4.tgz
	https://registry.yarnpkg.com/@types/npm-registry-fetch/-/npm-registry-fetch-8.0.7.tgz -> @types-npm-registry-fetch-8.0.7.tgz
	https://registry.yarnpkg.com/@types/npmlog/-/npmlog-7.0.0.tgz -> @types-npmlog-7.0.0.tgz
	https://registry.yarnpkg.com/@types/pacote/-/pacote-11.1.2.tgz -> @types-pacote-11.1.2.tgz
	https://registry.yarnpkg.com/@types/ssri/-/ssri-7.1.1.tgz -> @types-ssri-7.1.1.tgz
	https://registry.yarnpkg.com/@typescript-eslint/eslint-plugin/-/eslint-plugin-5.8.1.tgz -> @typescript-eslint-eslint-plugin-5.8.1.tgz
	https://registry.yarnpkg.com/@typescript-eslint/experimental-utils/-/experimental-utils-5.8.1.tgz -> @typescript-eslint-experimental-utils-5.8.1.tgz
	https://registry.yarnpkg.com/@typescript-eslint/parser/-/parser-5.8.1.tgz -> @typescript-eslint-parser-5.8.1.tgz
	https://registry.yarnpkg.com/@typescript-eslint/scope-manager/-/scope-manager-5.8.1.tgz -> @typescript-eslint-scope-manager-5.8.1.tgz
	https://registry.yarnpkg.com/@typescript-eslint/types/-/types-5.8.1.tgz -> @typescript-eslint-types-5.8.1.tgz
	https://registry.yarnpkg.com/@typescript-eslint/typescript-estree/-/typescript-estree-5.8.1.tgz -> @typescript-eslint-typescript-estree-5.8.1.tgz
	https://registry.yarnpkg.com/@typescript-eslint/visitor-keys/-/visitor-keys-5.8.1.tgz -> @typescript-eslint-visitor-keys-5.8.1.tgz
	https://registry.yarnpkg.com/@vercel/ncc/-/ncc-0.38.2.tgz -> @vercel-ncc-0.38.2.tgz
	https://registry.yarnpkg.com/abbrev/-/abbrev-1.1.1.tgz
	https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-5.3.2.tgz
	https://registry.yarnpkg.com/acorn/-/acorn-8.14.0.tgz
	https://registry.yarnpkg.com/agent-base/-/agent-base-6.0.2.tgz
	https://registry.yarnpkg.com/agentkeepalive/-/agentkeepalive-4.5.0.tgz
	https://registry.yarnpkg.com/aggregate-error/-/aggregate-error-3.1.0.tgz
	https://registry.yarnpkg.com/ajv/-/ajv-6.12.6.tgz
	https://registry.yarnpkg.com/ansi-colors/-/ansi-colors-4.1.3.tgz
	https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-5.0.1.tgz
	https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-4.3.0.tgz
	https://registry.yarnpkg.com/aproba/-/aproba-2.0.0.tgz
	https://registry.yarnpkg.com/are-we-there-yet/-/are-we-there-yet-3.0.1.tgz
	https://registry.yarnpkg.com/argparse/-/argparse-2.0.1.tgz
	https://registry.yarnpkg.com/array-buffer-byte-length/-/array-buffer-byte-length-1.0.1.tgz
	https://registry.yarnpkg.com/array-includes/-/array-includes-3.1.8.tgz
	https://registry.yarnpkg.com/array-union/-/array-union-2.1.0.tgz
	https://registry.yarnpkg.com/array.prototype.flat/-/array.prototype.flat-1.3.2.tgz
	https://registry.yarnpkg.com/arraybuffer.prototype.slice/-/arraybuffer.prototype.slice-1.0.3.tgz
	https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz
	https://registry.yarnpkg.com/available-typed-arrays/-/available-typed-arrays-1.0.7.tgz
	https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.2.tgz
	https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz
	https://registry.yarnpkg.com/braces/-/braces-3.0.3.tgz
	https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.1.4.tgz
	https://registry.yarnpkg.com/buffer-from/-/buffer-from-1.1.2.tgz
	https://registry.yarnpkg.com/builtins/-/builtins-1.0.3.tgz
	https://registry.yarnpkg.com/cacache/-/cacache-15.3.0.tgz
	https://registry.yarnpkg.com/call-bind/-/call-bind-1.0.7.tgz
	https://registry.yarnpkg.com/callsites/-/callsites-3.1.0.tgz
	https://registry.yarnpkg.com/chalk/-/chalk-4.1.2.tgz
	https://registry.yarnpkg.com/chownr/-/chownr-2.0.0.tgz
	https://registry.yarnpkg.com/clean-stack/-/clean-stack-2.2.0.tgz
	https://registry.yarnpkg.com/color-convert/-/color-convert-2.0.1.tgz
	https://registry.yarnpkg.com/color-name/-/color-name-1.1.4.tgz
	https://registry.yarnpkg.com/color-support/-/color-support-1.1.3.tgz
	https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.8.tgz
	https://registry.yarnpkg.com/commander/-/commander-8.3.0.tgz
	https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz
	https://registry.yarnpkg.com/console-control-strings/-/console-control-strings-1.1.0.tgz
	https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.3.tgz
	https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-7.0.3.tgz
	https://registry.yarnpkg.com/data-view-buffer/-/data-view-buffer-1.0.1.tgz
	https://registry.yarnpkg.com/data-view-byte-length/-/data-view-byte-length-1.0.1.tgz
	https://registry.yarnpkg.com/data-view-byte-offset/-/data-view-byte-offset-1.0.0.tgz
	https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz
	https://registry.yarnpkg.com/debug/-/debug-3.2.7.tgz
	https://registry.yarnpkg.com/debug/-/debug-4.3.7.tgz
	https://registry.yarnpkg.com/deep-is/-/deep-is-0.1.4.tgz
	https://registry.yarnpkg.com/define-data-property/-/define-data-property-1.1.4.tgz
	https://registry.yarnpkg.com/define-properties/-/define-properties-1.2.1.tgz
	https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz
	https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz
	https://registry.yarnpkg.com/dir-glob/-/dir-glob-3.0.1.tgz
	https://registry.yarnpkg.com/doctrine/-/doctrine-2.1.0.tgz
	https://registry.yarnpkg.com/doctrine/-/doctrine-3.0.0.tgz
	https://registry.yarnpkg.com/duplexify/-/duplexify-3.7.1.tgz
	https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-8.0.0.tgz
	https://registry.yarnpkg.com/encoding/-/encoding-0.1.13.tgz
	https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.4.4.tgz
	https://registry.yarnpkg.com/enquirer/-/enquirer-2.4.1.tgz
	https://registry.yarnpkg.com/env-paths/-/env-paths-2.2.1.tgz
	https://registry.yarnpkg.com/err-code/-/err-code-2.0.3.tgz
	https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.23.3.tgz
	https://registry.yarnpkg.com/es-define-property/-/es-define-property-1.0.0.tgz
	https://registry.yarnpkg.com/es-errors/-/es-errors-1.3.0.tgz
	https://registry.yarnpkg.com/es-object-atoms/-/es-object-atoms-1.0.0.tgz
	https://registry.yarnpkg.com/es-set-tostringtag/-/es-set-tostringtag-2.0.3.tgz
	https://registry.yarnpkg.com/es-shim-unscopables/-/es-shim-unscopables-1.0.2.tgz
	https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.2.1.tgz
	https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-4.0.0.tgz
	https://registry.yarnpkg.com/eslint-import-resolver-node/-/eslint-import-resolver-node-0.3.9.tgz
	https://registry.yarnpkg.com/eslint-module-utils/-/eslint-module-utils-2.12.0.tgz
	https://registry.yarnpkg.com/eslint-plugin-import/-/eslint-plugin-import-2.25.3.tgz
	https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-5.1.1.tgz
	https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-7.2.2.tgz
	https://registry.yarnpkg.com/eslint-utils/-/eslint-utils-3.0.0.tgz
	https://registry.yarnpkg.com/eslint-visitor-keys/-/eslint-visitor-keys-2.1.0.tgz
	https://registry.yarnpkg.com/eslint-visitor-keys/-/eslint-visitor-keys-3.4.3.tgz
	https://registry.yarnpkg.com/eslint/-/eslint-8.5.0.tgz
	https://registry.yarnpkg.com/espree/-/espree-9.6.1.tgz
	https://registry.yarnpkg.com/esquery/-/esquery-1.6.0.tgz
	https://registry.yarnpkg.com/esrecurse/-/esrecurse-4.3.0.tgz
	https://registry.yarnpkg.com/estraverse/-/estraverse-4.3.0.tgz
	https://registry.yarnpkg.com/estraverse/-/estraverse-5.3.0.tgz
	https://registry.yarnpkg.com/esutils/-/esutils-2.0.3.tgz
	https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz
	https://registry.yarnpkg.com/fast-glob/-/fast-glob-3.3.2.tgz
	https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.1.0.tgz
	https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz
	https://registry.yarnpkg.com/fastq/-/fastq-1.17.1.tgz
	https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-6.0.1.tgz
	https://registry.yarnpkg.com/fill-range/-/fill-range-7.1.1.tgz
	https://registry.yarnpkg.com/flat-cache/-/flat-cache-3.2.0.tgz
	https://registry.yarnpkg.com/flatted/-/flatted-3.3.1.tgz
	https://registry.yarnpkg.com/for-each/-/for-each-0.3.3.tgz
	https://registry.yarnpkg.com/form-data/-/form-data-4.0.1.tgz
	https://registry.yarnpkg.com/fs-minipass/-/fs-minipass-2.1.0.tgz
	https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz
	https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.2.tgz
	https://registry.yarnpkg.com/function.prototype.name/-/function.prototype.name-1.1.6.tgz
	https://registry.yarnpkg.com/functional-red-black-tree/-/functional-red-black-tree-1.0.1.tgz
	https://registry.yarnpkg.com/functions-have-names/-/functions-have-names-1.2.3.tgz
	https://registry.yarnpkg.com/gauge/-/gauge-4.0.4.tgz
	https://registry.yarnpkg.com/get-intrinsic/-/get-intrinsic-1.2.4.tgz
	https://registry.yarnpkg.com/get-symbol-description/-/get-symbol-description-1.0.2.tgz
	https://registry.yarnpkg.com/glob-parent/-/glob-parent-5.1.2.tgz
	https://registry.yarnpkg.com/glob-parent/-/glob-parent-6.0.2.tgz
	https://registry.yarnpkg.com/glob/-/glob-7.2.3.tgz
	https://registry.yarnpkg.com/globals/-/globals-13.24.0.tgz
	https://registry.yarnpkg.com/globalthis/-/globalthis-1.0.4.tgz
	https://registry.yarnpkg.com/globby/-/globby-11.1.0.tgz
	https://registry.yarnpkg.com/gopd/-/gopd-1.0.1.tgz
	https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.2.11.tgz
	https://registry.yarnpkg.com/gunzip-maybe/-/gunzip-maybe-1.4.2.tgz
	https://registry.yarnpkg.com/has-bigints/-/has-bigints-1.0.2.tgz
	https://registry.yarnpkg.com/has-flag/-/has-flag-4.0.0.tgz
	https://registry.yarnpkg.com/has-property-descriptors/-/has-property-descriptors-1.0.2.tgz
	https://registry.yarnpkg.com/has-proto/-/has-proto-1.0.3.tgz
	https://registry.yarnpkg.com/has-symbols/-/has-symbols-1.0.3.tgz
	https://registry.yarnpkg.com/has-tostringtag/-/has-tostringtag-1.0.2.tgz
	https://registry.yarnpkg.com/has-unicode/-/has-unicode-2.0.1.tgz
	https://registry.yarnpkg.com/has/-/has-1.0.4.tgz
	https://registry.yarnpkg.com/hasown/-/hasown-2.0.2.tgz
	https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-4.1.0.tgz
	https://registry.yarnpkg.com/http-cache-semantics/-/http-cache-semantics-4.1.1.tgz
	https://registry.yarnpkg.com/http-proxy-agent/-/http-proxy-agent-4.0.1.tgz
	https://registry.yarnpkg.com/https-proxy-agent/-/https-proxy-agent-5.0.1.tgz
	https://registry.yarnpkg.com/humanize-ms/-/humanize-ms-1.2.1.tgz
	https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.6.3.tgz
	https://registry.yarnpkg.com/ignore-walk/-/ignore-walk-4.0.1.tgz
	https://registry.yarnpkg.com/ignore/-/ignore-4.0.6.tgz
	https://registry.yarnpkg.com/ignore/-/ignore-5.3.2.tgz
	https://registry.yarnpkg.com/import-fresh/-/import-fresh-3.3.0.tgz
	https://registry.yarnpkg.com/imurmurhash/-/imurmurhash-0.1.4.tgz
	https://registry.yarnpkg.com/indent-string/-/indent-string-4.0.0.tgz
	https://registry.yarnpkg.com/infer-owner/-/infer-owner-1.0.4.tgz
	https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz
	https://registry.yarnpkg.com/inherits/-/inherits-2.0.4.tgz
	https://registry.yarnpkg.com/internal-slot/-/internal-slot-1.0.7.tgz
	https://registry.yarnpkg.com/ip-address/-/ip-address-9.0.5.tgz
	https://registry.yarnpkg.com/is-array-buffer/-/is-array-buffer-3.0.4.tgz
	https://registry.yarnpkg.com/is-bigint/-/is-bigint-1.0.4.tgz
	https://registry.yarnpkg.com/is-boolean-object/-/is-boolean-object-1.1.2.tgz
	https://registry.yarnpkg.com/is-callable/-/is-callable-1.2.7.tgz
	https://registry.yarnpkg.com/is-core-module/-/is-core-module-2.15.1.tgz
	https://registry.yarnpkg.com/is-data-view/-/is-data-view-1.0.1.tgz
	https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.5.tgz
	https://registry.yarnpkg.com/is-deflate/-/is-deflate-1.0.0.tgz
	https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz
	https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz
	https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.3.tgz
	https://registry.yarnpkg.com/is-gzip/-/is-gzip-1.0.0.tgz
	https://registry.yarnpkg.com/is-lambda/-/is-lambda-1.0.1.tgz
	https://registry.yarnpkg.com/is-negative-zero/-/is-negative-zero-2.0.3.tgz
	https://registry.yarnpkg.com/is-number-object/-/is-number-object-1.0.7.tgz
	https://registry.yarnpkg.com/is-number/-/is-number-7.0.0.tgz
	https://registry.yarnpkg.com/is-regex/-/is-regex-1.1.4.tgz
	https://registry.yarnpkg.com/is-shared-array-buffer/-/is-shared-array-buffer-1.0.3.tgz
	https://registry.yarnpkg.com/is-string/-/is-string-1.0.7.tgz
	https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.4.tgz
	https://registry.yarnpkg.com/is-typed-array/-/is-typed-array-1.1.13.tgz
	https://registry.yarnpkg.com/is-weakref/-/is-weakref-1.0.2.tgz
	https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz
	https://registry.yarnpkg.com/isarray/-/isarray-2.0.5.tgz
	https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz
	https://registry.yarnpkg.com/js-yaml/-/js-yaml-4.1.0.tgz
	https://registry.yarnpkg.com/jsbn/-/jsbn-1.1.0.tgz
	https://registry.yarnpkg.com/json-buffer/-/json-buffer-3.0.1.tgz
	https://registry.yarnpkg.com/json-parse-even-better-errors/-/json-parse-even-better-errors-2.3.1.tgz
	https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz
	https://registry.yarnpkg.com/json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz
	https://registry.yarnpkg.com/json5/-/json5-1.0.2.tgz
	https://registry.yarnpkg.com/jsonparse/-/jsonparse-1.3.1.tgz
	https://registry.yarnpkg.com/keyv/-/keyv-4.5.4.tgz
	https://registry.yarnpkg.com/levn/-/levn-0.4.1.tgz
	https://registry.yarnpkg.com/lodash.merge/-/lodash.merge-4.6.2.tgz
	https://registry.yarnpkg.com/lru-cache/-/lru-cache-6.0.0.tgz
	https://registry.yarnpkg.com/make-fetch-happen/-/make-fetch-happen-9.1.0.tgz
	https://registry.yarnpkg.com/merge2/-/merge2-1.4.1.tgz
	https://registry.yarnpkg.com/micromatch/-/micromatch-4.0.8.tgz
	https://registry.yarnpkg.com/mime-db/-/mime-db-1.52.0.tgz
	https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.35.tgz
	https://registry.yarnpkg.com/minimatch/-/minimatch-3.1.2.tgz
	https://registry.yarnpkg.com/minimist/-/minimist-1.2.8.tgz
	https://registry.yarnpkg.com/minipass-collect/-/minipass-collect-1.0.2.tgz
	https://registry.yarnpkg.com/minipass-fetch/-/minipass-fetch-1.4.1.tgz
	https://registry.yarnpkg.com/minipass-flush/-/minipass-flush-1.0.5.tgz
	https://registry.yarnpkg.com/minipass-json-stream/-/minipass-json-stream-1.0.2.tgz
	https://registry.yarnpkg.com/minipass-pipeline/-/minipass-pipeline-1.2.4.tgz
	https://registry.yarnpkg.com/minipass-sized/-/minipass-sized-1.0.3.tgz
	https://registry.yarnpkg.com/minipass/-/minipass-3.3.6.tgz
	https://registry.yarnpkg.com/minipass/-/minipass-5.0.0.tgz
	https://registry.yarnpkg.com/minizlib/-/minizlib-2.1.2.tgz
	https://registry.yarnpkg.com/mkdirp/-/mkdirp-1.0.4.tgz
	https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz
	https://registry.yarnpkg.com/ms/-/ms-2.1.3.tgz
	https://registry.yarnpkg.com/natural-compare/-/natural-compare-1.4.0.tgz
	https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.4.tgz
	https://registry.yarnpkg.com/node-gyp/-/node-gyp-8.4.1.tgz
	https://registry.yarnpkg.com/nopt/-/nopt-5.0.0.tgz
	https://registry.yarnpkg.com/npm-bundled/-/npm-bundled-1.1.2.tgz
	https://registry.yarnpkg.com/npm-install-checks/-/npm-install-checks-4.0.0.tgz
	https://registry.yarnpkg.com/npm-normalize-package-bin/-/npm-normalize-package-bin-1.0.1.tgz
	https://registry.yarnpkg.com/npm-package-arg/-/npm-package-arg-8.1.5.tgz
	https://registry.yarnpkg.com/npm-packlist/-/npm-packlist-3.0.0.tgz
	https://registry.yarnpkg.com/npm-pick-manifest/-/npm-pick-manifest-6.1.1.tgz
	https://registry.yarnpkg.com/npm-registry-fetch/-/npm-registry-fetch-11.0.0.tgz
	https://registry.yarnpkg.com/npmlog/-/npmlog-6.0.2.tgz
	https://registry.yarnpkg.com/object-inspect/-/object-inspect-1.13.2.tgz
	https://registry.yarnpkg.com/object-keys/-/object-keys-1.1.1.tgz
	https://registry.yarnpkg.com/object.assign/-/object.assign-4.1.5.tgz
	https://registry.yarnpkg.com/object.values/-/object.values-1.2.0.tgz
	https://registry.yarnpkg.com/once/-/once-1.4.0.tgz
	https://registry.yarnpkg.com/optionator/-/optionator-0.9.4.tgz
	https://registry.yarnpkg.com/p-map/-/p-map-4.0.0.tgz
	https://registry.yarnpkg.com/pacote/-/pacote-12.0.2.tgz
	https://registry.yarnpkg.com/pako/-/pako-0.2.9.tgz
	https://registry.yarnpkg.com/parent-module/-/parent-module-1.0.1.tgz
	https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz
	https://registry.yarnpkg.com/path-key/-/path-key-3.1.1.tgz
	https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.7.tgz
	https://registry.yarnpkg.com/path-type/-/path-type-4.0.0.tgz
	https://registry.yarnpkg.com/peek-stream/-/peek-stream-1.1.3.tgz
	https://registry.yarnpkg.com/picocolors/-/picocolors-1.0.0.tgz
	https://registry.yarnpkg.com/picomatch/-/picomatch-2.3.1.tgz
	https://registry.yarnpkg.com/possible-typed-array-names/-/possible-typed-array-names-1.0.0.tgz
	https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.2.1.tgz
	https://registry.yarnpkg.com/prettier/-/prettier-2.5.1.tgz
	https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-2.0.1.tgz
	https://registry.yarnpkg.com/progress/-/progress-2.0.3.tgz
	https://registry.yarnpkg.com/promise-inflight/-/promise-inflight-1.0.1.tgz
	https://registry.yarnpkg.com/promise-retry/-/promise-retry-2.0.1.tgz
	https://registry.yarnpkg.com/pump/-/pump-2.0.1.tgz
	https://registry.yarnpkg.com/pumpify/-/pumpify-1.5.1.tgz
	https://registry.yarnpkg.com/punycode/-/punycode-2.3.1.tgz
	https://registry.yarnpkg.com/queue-microtask/-/queue-microtask-1.2.3.tgz
	https://registry.yarnpkg.com/read-package-json-fast/-/read-package-json-fast-2.0.3.tgz
	https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.8.tgz
	https://registry.yarnpkg.com/readable-stream/-/readable-stream-3.6.2.tgz
	https://registry.yarnpkg.com/regexp.prototype.flags/-/regexp.prototype.flags-1.5.3.tgz
	https://registry.yarnpkg.com/regexpp/-/regexpp-3.2.0.tgz
	https://registry.yarnpkg.com/resolve-from/-/resolve-from-4.0.0.tgz
	https://registry.yarnpkg.com/resolve/-/resolve-1.22.8.tgz
	https://registry.yarnpkg.com/retry/-/retry-0.12.0.tgz
	https://registry.yarnpkg.com/reusify/-/reusify-1.0.4.tgz
	https://registry.yarnpkg.com/rimraf/-/rimraf-3.0.2.tgz
	https://registry.yarnpkg.com/run-parallel/-/run-parallel-1.2.0.tgz
	https://registry.yarnpkg.com/safe-array-concat/-/safe-array-concat-1.1.2.tgz
	https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.2.tgz
	https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.2.1.tgz
	https://registry.yarnpkg.com/safe-regex-test/-/safe-regex-test-1.0.3.tgz
	https://registry.yarnpkg.com/safer-buffer/-/safer-buffer-2.1.2.tgz
	https://registry.yarnpkg.com/semver/-/semver-7.6.3.tgz
	https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz
	https://registry.yarnpkg.com/set-function-length/-/set-function-length-1.2.2.tgz
	https://registry.yarnpkg.com/set-function-name/-/set-function-name-2.0.2.tgz
	https://registry.yarnpkg.com/shebang-command/-/shebang-command-2.0.0.tgz
	https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-3.0.0.tgz
	https://registry.yarnpkg.com/shrinkpack/-/shrinkpack-0.20.0.tgz
	https://registry.yarnpkg.com/side-channel/-/side-channel-1.0.6.tgz
	https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.7.tgz
	https://registry.yarnpkg.com/slash/-/slash-3.0.0.tgz
	https://registry.yarnpkg.com/smart-buffer/-/smart-buffer-4.2.0.tgz
	https://registry.yarnpkg.com/socks-proxy-agent/-/socks-proxy-agent-6.2.1.tgz
	https://registry.yarnpkg.com/socks/-/socks-2.8.3.tgz
	https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.1.3.tgz
	https://registry.yarnpkg.com/ssri/-/ssri-8.0.1.tgz
	https://registry.yarnpkg.com/stream-shift/-/stream-shift-1.0.3.tgz
	https://registry.yarnpkg.com/string-width/-/string-width-4.2.3.tgz
	https://registry.yarnpkg.com/string.prototype.trim/-/string.prototype.trim-1.2.9.tgz
	https://registry.yarnpkg.com/string.prototype.trimend/-/string.prototype.trimend-1.0.8.tgz
	https://registry.yarnpkg.com/string.prototype.trimstart/-/string.prototype.trimstart-1.0.8.tgz
	https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.1.1.tgz
	https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.3.0.tgz
	https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-6.0.1.tgz
	https://registry.yarnpkg.com/strip-bom/-/strip-bom-3.0.0.tgz
	https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-3.1.1.tgz
	https://registry.yarnpkg.com/supports-color/-/supports-color-7.2.0.tgz
	https://registry.yarnpkg.com/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz
	https://registry.yarnpkg.com/tar/-/tar-6.2.1.tgz
	https://registry.yarnpkg.com/text-table/-/text-table-0.2.0.tgz
	https://registry.yarnpkg.com/through2/-/through2-2.0.5.tgz
	https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-5.0.1.tgz
	https://registry.yarnpkg.com/tsconfig-paths/-/tsconfig-paths-3.15.0.tgz
	https://registry.yarnpkg.com/tslib/-/tslib-1.14.1.tgz
	https://registry.yarnpkg.com/tsutils/-/tsutils-3.21.0.tgz
	https://registry.yarnpkg.com/type-check/-/type-check-0.4.0.tgz
	https://registry.yarnpkg.com/type-fest/-/type-fest-0.20.2.tgz
	https://registry.yarnpkg.com/typed-array-buffer/-/typed-array-buffer-1.0.2.tgz
	https://registry.yarnpkg.com/typed-array-byte-length/-/typed-array-byte-length-1.0.1.tgz
	https://registry.yarnpkg.com/typed-array-byte-offset/-/typed-array-byte-offset-1.0.2.tgz
	https://registry.yarnpkg.com/typed-array-length/-/typed-array-length-1.0.6.tgz
	https://registry.yarnpkg.com/typescript/-/typescript-4.5.4.tgz
	https://registry.yarnpkg.com/unbox-primitive/-/unbox-primitive-1.0.2.tgz
	https://registry.yarnpkg.com/unique-filename/-/unique-filename-1.1.1.tgz
	https://registry.yarnpkg.com/unique-slug/-/unique-slug-2.0.2.tgz
	https://registry.yarnpkg.com/uri-js/-/uri-js-4.4.1.tgz
	https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz
	https://registry.yarnpkg.com/v8-compile-cache/-/v8-compile-cache-2.4.0.tgz
	https://registry.yarnpkg.com/validate-npm-package-name/-/validate-npm-package-name-3.0.0.tgz
	https://registry.yarnpkg.com/which-boxed-primitive/-/which-boxed-primitive-1.0.2.tgz
	https://registry.yarnpkg.com/which-typed-array/-/which-typed-array-1.1.15.tgz
	https://registry.yarnpkg.com/which/-/which-2.0.2.tgz
	https://registry.yarnpkg.com/wide-align/-/wide-align-1.1.5.tgz
	https://registry.yarnpkg.com/word-wrap/-/word-wrap-1.2.5.tgz
	https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz
	https://registry.yarnpkg.com/xtend/-/xtend-4.0.2.tgz
	https://registry.yarnpkg.com/yallist/-/yallist-4.0.0.tgz
	)
	https://registry.yarnpkg.com/@vscode/ripgrep/-/ripgrep-1.15.9.tgz -> @vscode-ripgrep-1.15.9.tgz
"

REPO="https://github.com/microsoft/vscode"
#CODE_COMMIT_ID="ae245c9b1f06e79cec4829f8cd1555206b0ec8f2"
IUSE="api-proposals badge-providers electron-27 electron-28 electron-29 electron-31 electron-32 electron-33 openvsx reh reh-web substitute-urls"

if [[ ${PV} = *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="${REPO}.git"
	DOWNLOAD=""
	IUSE+=" +build-online"
	ELECTRON_SLOT_DEFAULT="30"
else
	IUSE+=" build-online"
	ELECTRON_SLOT_DEFAULT="30"
	KEYWORDS="amd64 ~arm64 ~ppc64 ~x86"
	DOWNLOAD="${REPO}/archive/"
	if [ -z "$CODE_COMMIT_ID" ]; then
		DOWNLOAD+="${PV}.tar.gz -> ${P}.tar.gz"
	else
		DOWNLOAD+="${CODE_COMMIT_ID}.tar.gz -> ${PN}-${CODE_COMMIT_ID}.tar.gz"
		S="${WORKDIR}/${PN}-${CODE_COMMIT_ID}"
	fi
fi

SRC_URI+="${DOWNLOAD}"

RESTRICT="mirror build-online? ( network-sandbox )"

REQUIRED_USE=""

COMMON_DEPEND="
	>=app-crypt/libsecret-0.18.8:=
	>=x11-libs/libX11-1.6.9:=
	>=x11-libs/libxkbfile-1.1.0:=
	virtual/krb5
	sys-apps/ripgrep
	electron-27? ( dev-util/electron:27 )
	electron-28? ( dev-util/electron:28 )
	electron-29? ( dev-util/electron:29 )
	electron-31? ( dev-util/electron:31 )
	electron-32? ( dev-util/electron:32 )
	electron-33? ( dev-util/electron:33 )
	!electron-27? (
	!electron-28? (
	!electron-29? (
	!electron-31? (
	!electron-32? (
	!electron-33? (
		dev-util/electron:${ELECTRON_SLOT_DEFAULT}
	) ) ) ) ) )
"

#TODO: oniguruma?

RDEPEND="${COMMON_DEPEND}
"

DEPEND="${COMMON_DEPEND}
"

BDEPEND="
	${PYTHON_DEPS}
	$(python_gen_any_dep '
		dev-python/setuptools[${PYTHON_USEDEP}]
	')
	net-libs/nodejs
	sys-apps/yarn
"

python_check_deps() {
        python_has_version "dev-python/setuptools[${PYTHON_USEDEP}]"
}

src_unpack() {
	if use electron-27; then
		export ELECTRON_SLOT=27
	elif use electron-28; then
		export ELECTRON_SLOT=28
	elif use electron-29; then
		export ELECTRON_SLOT=29
	elif use electron-31; then
		export ELECTRON_SLOT=31
	elif use electron-32; then
		export ELECTRON_SLOT=32
	elif use electron-33; then
		export ELECTRON_SLOT=33
	else
		export ELECTRON_SLOT=$ELECTRON_SLOT_DEFAULT
	fi
	if [ -z "$CODE_COMMIT_ID" ]; then
		if [ -f "${DISTDIR}/${P}.tar.gz" ]; then
			unpack "${P}".tar.gz || die
		else
			# if use electron-29 || use electron-30; then
			# 	EGIT_BRANCH="electron-29.x.y"
			# fi
			git-r3_src_unpack
		fi
	else
		unpack "${PN}-${CODE_COMMIT_ID}.tar.gz" || die
	fi
}

src_prepare() {
	default

	# einfo "Restoring electron 12 support"
	# patch -Rup1 -i "${DISTDIR}/${PN}-f95b7e935f0edf1b41a2195fbe380078b29ab8f8.patch" || die

	einfo "Add PPC target to package build scripts"
	patch -p1 -i "${FILESDIR}/ppc64le/add-ppc-target.patch" || die

	einfo "Removing vscode-ripgrep and other dependencies"
	sed -i '/ripgrep"/d' package.json || die
	sed -i '/telemetry-extractor"/d' package.json || die
	# tree-sitter is an optional package, but is not built as a mandatory one because it is deprecated
	# mask it until it is updated to version >0.21.0
	sed -i '/tree-sitter"/d' build/package.json || die
	sed -i '/git-blame-ignore/d' build/npm/postinstall.js || die

	if ! use build-online; then
	einfo "Replacing git dependencies with local tgz files"
	pushd "extensions/emmet" > /dev/null || die
		sed -i "s|\(\"@emmetio/css-parser\":\s*\).*\(,\)|\1\"file:${DISTDIR}/@emmetio-css-parser-0.4.0.tgz\"\2|" package.json || die
		npm install @emmetio/css-parser --package-lock-only > /dev/null || die
	popd > /dev/null || die
	fi 

	if use reh || use reh-web; then
		sed -i '/ripgrep"/d' remote/package.json || die
	fi

	if use electron-32 || use electron-33; then
		sed -i '/native-keymap"/d' package.json || die
	fi

	# ewarn "Removing extensions/npm, see #203"
	# ewarn "Please poke Microsoft here: https://github.com/microsoft/vscode/issues/181598"
	# rm -r extensions/npm
	# sed -i '/extensions\/npm/d' build/npm/dirs.js || die

	#TODO: applicationinsights
	# sed -i '/applicationinsights/d' package.json || die
	# sed -i '/buildWebNodePaths/d' build/gulpfile.compile.js || die

	# sed -i '/"electron"/d' package.json || die
	# sed -i '/"playwright"/d' package.json || die
	sed -i '/test-web"/d' package.json || die

	sed -i '/"typescript-web-server"/d' extensions/typescript-language-features/package.json || die

	einfo "Editing postinstall.js"
	#sed -i "s/ || arg === '--frozen-lockfile'/ || arg === '--frozen-lockfile' || arg === '--offline' || arg === '--no-progress'/" build/npm/postinstall.js || die
	sed -i '/git config pull/d' build/npm/postinstall.js || die

	einfo "Editing dirs.js"
	if ! ( use reh || use reh-web ); then
		sed -i '/remote/d' build/npm/dirs.js || die
	fi
	sed -i '/test\/automation/d' build/npm/dirs.js || die
	sed -i '/test\/integration\/browser/d' build/npm/dirs.js || die
	sed -i '/test\/smoke/d' build/npm/dirs.js || die
	sed -i '/test\/monaco/d' build/npm/dirs.js || die
	sed -i '/vscode-selfhost-test-provider/d' build/npm/dirs.js || die

	einfo "Editing build/gulpfile.extensions.js"
	sed -i '/bundle-marketplace-extensions-build/d' build/gulpfile.extensions.js || die

	if use reh || use reh-web; then
		einfo "Editing build/gulpfile.reh.js"
		sed -i '/gulp.task(`node-${platform}-${arch}`)/d' build/gulpfile.reh.js || die
		sed -i 's|\$ROOT/node|/usr/bin/node|' resources/server/bin/code-server-linux.sh || die
		sed -i 's|\$ROOT/node|/usr/bin/node|' resources/server/bin/remote-cli/code-linux.sh || die
		sed -i 's|\$ROOT/node|/usr/bin/node|' resources/server/bin/helpers/browser-linux.sh || die
	fi

	einfo "Editing build/gulpfile.vscode.js"
	#sed -i 's/ffmpegChromium: true/ffmpegChromium: false/' build/gulpfile.vscode.js || die
	sed -i '/ffmpegChromium/d' build/gulpfile.vscode.js || die
	sed -i '/\.pipe(createAsar/,/node_modules\.asar/{d;}' build/gulpfile.vscode.js || die
	#sed -i 's$// Build$process.noAsar = true;$' build/gulpfile.vscode.js || die

	einfo "Editing build/gulpfile.vscode.linux.js"
	sed -i 's/gulp.task(buildDebTask);$/gulp.task(prepareDebTask);gulp.task(buildDebTask);/' build/gulpfile.vscode.linux.js || die
	sed -i 's/const sysroot =.*$/const sysroot = false;/' build/gulpfile.vscode.linux.js || die
	sed -i 's/const dependencies =.*$/const dependencies = [];/' build/gulpfile.vscode.linux.js || die

	einfo "Editing product.json"

	mv product.json product.json.bak || die
	sed -i '1d' product.json.bak || die

	cat "${FILESDIR}/heading.json" > product.json

	if use openvsx; then
		cat "${FILESDIR}/openvsx.json" >> product.json
	else
		cat "${FILESDIR}/marketplace.json" >> product.json
	fi

	if use badge-providers; then
		cat "${FILESDIR}/badge_prov.json" >> product.json
	fi

	if use api-proposals; then
		cat "${FILESDIR}/api-proposals.json" >> product.json
	fi

	cat product.json.bak >> product.json

	einfo "Disabling telemetry by default"
	perl -0777 -pi -e "s/'default': true,\n\s*'restricted': true,/'default': false,'restricted': true,/m or die" src/vs/platform/telemetry/common/telemetryService.ts || die
	perl -0777 -pi -e "s/'default': TelemetryConfiguration.ON,/'default': TelemetryConfiguration.OFF,/m or die" src/vs/platform/telemetry/common/telemetryService.ts || die
	perl -0777 -pi -e "s/'default': true,\n\s*'tags': \['usesOnlineServices', 'telemetry'\]/'default': false,'tags': ['usesOnlineServices', 'telemetry']/m or die" src/vs/workbench/electron-sandbox/desktop.contribution.ts || die

	einfo "Disabling automatic updates by default"
	perl -0777 -pi -e "s/enum: \['none', 'manual', 'start', 'default'\],\n\s*default: 'default',/enum: ['none', 'manual', 'start', 'default'], default: 'none',/m or die" src/vs/platform/update/common/update.config.contribution.ts || die

	if use substitute-urls; then
	ebegin "Substituting urls"
		#Taken from VSCodium
		TELEMETRY_URLS="[^/]+\.data\.microsoft\.com"
		REPLACEMENT="s/$TELEMETRY_URLS/0\.0\.0\.0/g"
		grep -rl --exclude-dir=.git -E $TELEMETRY_URLS . | xargs sed -i -E $REPLACEMENT
	eend $? || die
	fi
}

src_configure() {

	local myarch="$(tc-arch)"

	if [[ $myarch = amd64 ]]; then
		VSCODE_ARCH="x64"
	elif [[ $myarch = x86 ]]; then
		VSCODE_ARCH="ia32"
	elif [[ $myarch = arm64 ]]; then
		VSCODE_ARCH="arm64"
	elif [[ $myarch = arm ]]; then
		VSCODE_ARCH="armhf"
	elif [[ $myarch = ppc64 ]]; then
		VSCODE_ARCH="ppc64"
	else
		die "Failed to determine target arch, got '$myarch'."
	fi
	#TODO: exported but unavailable if emerge/ebuild restarted
	export VSCODE_ARCH

	ebegin "Installing node_modules"
	OLD_PATH=$PATH
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}/node_modules/npm/bin/node-gyp-bin:$PATH"
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}/node_modules/npm/bin:$PATH"
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}:$PATH"
	export PATH
	export NPM_DEFAULT_FLAGS="--nodedir=/usr/include/electron-${ELECTRON_SLOT}/node --arch=${VSCODE_ARCH} --build-from-source --no-audit --no-progress"
	export CFLAGS="${CFLAGS} -I/usr/include/electron-${ELECTRON_SLOT}/node"
	export CPPFLAGS="${CPPFLAGS} -I/usr/include/electron-${ELECTRON_SLOT}/node"
	export ELECTRON_SKIP_BINARY_DOWNLOAD=1
	export PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
	export VSCODE_SKIP_NODE_VERSION_CHECK=1

	local VS_NATIVE_KEYMAP_V=$(node -p "require('./package-lock.json').packages['node_modules/native-keymap'].version || process.exit(1)" || die)
	local VS_RIPGREP_V=$(node -p "require('./package-lock.json').packages['node_modules/@vscode/ripgrep'].version || process.exit(1)" || die)

	npm config set update-notifier false || die
	npm config set loglevel error || die

	if ! use build-online; then
		NPM_DEFAULT_FLAGS="${NPM_DEFAULT_FLAGS} --offline"
		npm config set offline true || die

		einfo "Unpacking shrinkpack"
		mkdir -p node_modules || die
		tar -xzf "${DISTDIR}/shrinkpack-0.20.0.tgz" -C node_modules || die
		mv node_modules/package node_modules/shrinkpack || die
		cp "${FILESDIR}/shrinkpack-package-lock.json" node_modules/shrinkpack/package-lock.json || die
		sed -i "s|{{DISTDIR}}|${DISTDIR}|g" node_modules/shrinkpack/package-lock.json || die
		patch -p1 -i "${FILESDIR}/shrinkpack.patch" || die

		einfo "Installing shrinkpack dependencies"
		/usr/bin/node /usr/bin/npm install ${NPM_DEFAULT_FLAGS} --prefix node_modules/shrinkpack > /dev/null || die

		einfo "Altering all package-lock.json for offline mode"
		for dir in $(find . -type f -name 'package-lock.json' -not -path '*/node_modules/*' -exec dirname {} \; | sort -u); do
			node node_modules/shrinkpack/dist/bin.js "${DISTDIR}" $dir > /dev/null || die
		done
	fi

	einfo "Installing vscode dependencies"
	/usr/bin/node /usr/bin/npm clean-install ${NPM_DEFAULT_FLAGS} > /dev/null || die

	if use electron-32 || use electron-33; then
		einfo "Restoring native-keymap with stdc++20 support"
		if ! use build-online; then
		sed -i "s|\"dependencies\": {|\"dependencies\": {\"native-keymap\": \"file:${DISTDIR}/native-keymap-${VS_NATIVE_KEYMAP_V}.tgz\",|" package.json || die
		fi

		npm install native-keymap ${NPM_DEFAULT_FLAGS} --ignore-scripts > /dev/null || die
		sed -i "/\\['OS==\"linux\"', {/a\\\t  \"cflags_cc\": [ \"-std=c++20\" ]," node_modules/native-keymap/binding.gyp || die
		npm rebuild native-keymap ${NPM_DEFAULT_FLAGS} > /dev/null || die
	fi

	# Workaround md4 see https://github.com/webpack/webpack/issues/14560
	find node_modules/webpack/lib -type f -exec sed -i 's|md4|sha512|g' {} \; || die
	# For webpack >= 5.61.0
	sed -i 's/case "sha512"/case "md4"/' node_modules/webpack/lib/util/createHash.js || die

	export PATH=${OLD_PATH}

	einfo "Restoring vscode-ripgrep"
	pushd "node_modules/@vscode" > /dev/null || die
		tar -xf "${DISTDIR}/@vscode-ripgrep-${VS_RIPGREP_V}.tgz" || die
		mv package ripgrep || die
		sed -i 's$module.exports.rgPath.*$module.exports.rgPath = "/usr/bin/rg";\n$' ripgrep/lib/index.js || die
		sed -i '/"postinstall"/d' ripgrep/package.json || die
		mkdir ripgrep/bin || die
		ln -s /usr/bin/rg ripgrep/bin/rg || die
	popd > /dev/null || die

	if use reh || use reh-web; then
		cp -r node_modules/@vscode/ripgrep remote/node_modules/@vscode
	fi

	eend $? || die
	sed -i "s/\"dependencies\": {/\"dependencies\": {\"@vscode\/ripgrep\": \"^${VS_RIPGREP_V}\",/" package.json || die

	if use reh || use reh-web; then
		sed -i "s/\"dependencies\": {/\"dependencies\": {\"@vscode\/ripgrep\": \"^${VS_RIPGREP_V}\",/" remote/package.json || die
	fi

	einfo "Editing build/lib/getVersion.js"
	sed -i '/.*\!version.*/{s++if \(false\)\{+;h};${x;/./{x;q0};x;q1}' \
		build/lib/getVersion.js || die

	#TODO Although this allows the build to continue, it renders vscode unusable
	#TODO Does it really? Investigate later
	# einfo "Fixing l10n-dev"
	# sed -i 's/return await import_web_tree_sitter/return null; await import_web_tree_sitter/' node_modules/@vscode/l10n-dev/dist/main.js || die
	einfo "Purging the npm cache"
	npm cache clean --force || die
}

src_compile() {
	ulimit -n 8192

	if [ -d ".git" ]; then
	    COMMIT_ID="$(git rev-parse HEAD)"
	else
		if [ -z "$CODE_COMMIT_ID" ]; then
			COMMIT_ID="${PV}"
		else
			COMMIT_ID="${CODE_COMMIT_ID}"
		fi
	fi
	export BUILD_SOURCEVERSION="${COMMIT_ID}"

	OLD_PATH=$PATH
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}/node_modules/npm/bin/node-gyp-bin:$PATH"
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}/node_modules/npm/bin:$PATH"
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}:$PATH"
	export PATH
	export NODE_OPTIONS="--max-old-space-size=12192 --heapsnapshot-near-heap-limit=5"

	node node_modules/gulp/bin/gulp.js vscode-linux-${VSCODE_ARCH}-min || die

	#TODO: make reh use the same node at runtime as main vscode
	if use reh; then
		node node_modules/gulp/bin/gulp.js vscode-reh-linux-${VSCODE_ARCH}-min || die
	fi
	if use reh-web; then
		node node_modules/gulp/bin/gulp.js vscode-reh-web-linux-${VSCODE_ARCH}-min || die
	fi

	export PATH=${OLD_PATH}
}

src_install() {
	OLD_PATH=$PATH
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}/node_modules/npm/bin/node-gyp-bin:$PATH"
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}/node_modules/npm/bin:$PATH"
	PATH="/usr/$(get_libdir)/electron-${ELECTRON_SLOT}:$PATH"
	export PATH

	node node_modules/gulp/bin/gulp.js vscode-linux-${VSCODE_ARCH}-prepare-deb || die

	local VSCODE_HOME="/usr/$(get_libdir)/vscode"

	exeinto "${VSCODE_HOME}"
	sed -i '/^ELECTRON/,+3d' "${WORKDIR}"/V*/bin/code-oss || die

	awk -i inplace -v text="$(cat ${FILESDIR}/read_flags_file)" '!/^#/ && !p {print text; p=1} 1' "${WORKDIR}"/V*/bin/code-oss
	sed -i "s|@ELECTRON@|code-oss|" "${WORKDIR}"/V*/bin/code-oss

	echo "VSCODE_PATH=\"/usr/$(get_libdir)/vscode\"
	ELECTRON_PATH=\"/usr/$(get_libdir)/electron-${ELECTRON_SLOT}\"
	CLI=\"\${VSCODE_PATH}/out/cli.js\"
	exec /usr/bin/env \
	\"\${ELECTRON_PATH}/electron\" \"\${CLI}\" --app=\"\${VSCODE_PATH}\" \"\${flags[@]}\" \"\$@\"" >> "${WORKDIR}"/V*/bin/code-oss
	doexe "${WORKDIR}"/VSCode-linux-${VSCODE_ARCH}/bin/code-oss
	dosym "${VSCODE_HOME}/code-oss" /usr/bin/code-oss

	insinto "${VSCODE_HOME}"
	doins -r "${WORKDIR}"/VSCode-linux-${VSCODE_ARCH}/extensions
	doins -r "${WORKDIR}"/VSCode-linux-${VSCODE_ARCH}/out
	doins -r "${WORKDIR}"/VSCode-linux-${VSCODE_ARCH}/resources
	doins -r "${WORKDIR}"/VSCode-linux-${VSCODE_ARCH}/node_modules
	doins "${WORKDIR}"/VSCode-linux-${VSCODE_ARCH}/*.json
	#doins "${WORKDIR}"/VSCode-linux-${VSCODE_ARCH}/node_modules.asar
	fperms +x ${VSCODE_HOME}/out/vs/base/node/cpuUsage.sh
	fperms +x ${VSCODE_HOME}/extensions/git/dist/askpass.sh
	fperms +x ${VSCODE_HOME}/node_modules/@vscode/ripgrep/bin/rg
	# fperms +x ${VSCODE_HOME}/node_modules.asar.unpacked/node-pty/build/Release/spawn-helper

	if use reh; then
		tar czf vscode-server-linux-x64.tar.gz -C "${WORKDIR}/vscode-reh-linux-x64/" .
		doins vscode-server-linux-x64.tar.gz
	fi
	if use reh-web; then
		tar czf vscode-server-linux-x64-web.tar.gz -C "${WORKDIR}/vscode-reh-web-linux-x64/" .
		doins vscode-server-linux-x64-web.tar.gz
	fi

	pushd .build/linux/deb/*/code-oss-*/usr/share/ > /dev/null || die

	insinto /usr/share/
	sed -i 's$x-scheme-handler/code-oss$x-scheme-handler/code-oss;x-scheme-handler/vscode$' \
		applications/*handler.desktop || die
	sed -i 's$/usr/share/code-oss/code-oss$/usr/bin/code-oss$' applications/*.desktop || die
	doins -r applications bash-completion pixmaps zsh

	insinto /usr/share/metainfo/
	doins appdata/*

	popd > /dev/null || die
	export PATH=${OLD_PATH}
}


pkg_postrm() {
	xdg_icon_cache_update
	xdg_desktop_database_update
}

pkg_postinst() {
	if use api-proposals; then
		ewarn
		ewarn "You have enabled insiders API, be warned:"
		ewarn "this might be against Microsoft licensing terms."
		ewarn
	fi

	elog
	elog "Normally vscode ships some builtin extensions, but they are omitted here"
	elog "Consult product.json for a list if you want to install them manually"
	elog "ms-vscode.references-view is one of them, for example"
	elog

	xdg_icon_cache_update
	xdg_desktop_database_update
}
