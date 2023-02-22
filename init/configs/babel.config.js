module.exports = function (api) {
  api.cache(true);
  const moduleResolver = [
    'module-resolver',
    {
      root: ['./src'],
      alias: {
        '@app': './src/app',
        '@domains': './src/domains',
        '@assets': './src/app/assets',
        '@components': './src/app/components',
        '@hooks': './src/app/hooks',
        '@navigation': './src/app/navigation',
        '@context': './src/app/context',
      },
      extensions: ['.js', '.jsx', '.ts', '.tsx', '.android.js', '.android.tsx', '.ios.js', '.ios.tsx'],
    },
  ];
  if (process.env.NODE_ENV === 'production' || process.env.BABEL_ENV === 'production') {
    return {
      presets: ['module:metro-react-native-babel-preset'],
      plugins: [
        moduleResolver,
        ['transform-remove-console', { exclude: ['error', 'info'] }],
        'react-native-reanimated/plugin',
      ],
    };
  } else {
    return {
      presets: [
        '@babel/preset-env',
        '@babel/preset-react',
        '@babel/preset-typescript',
        ['module:metro-react-native-babel-preset', { useTransformReactJSXExperimental: true }],
      ],
      plugins: [
        moduleResolver,
        ['@babel/plugin-transform-flow-strip-types'],
        [
          '@babel/plugin-transform-react-jsx',
          {
            runtime: 'automatic',
          },
        ],
        ['@babel/plugin-proposal-decorators', { legacy: true }],
        ['@babel/plugin-proposal-class-properties', { loose: true }],
        ['@babel/plugin-proposal-private-methods', { loose: true }],
        ['@babel/plugin-proposal-private-property-in-object', { loose: true }],
        '@babel/plugin-transform-runtime',
        'react-native-reanimated/plugin', // <--- Only add this plugin if "react-native-reanimated" is installed in your project.],
      ],
    };
  }
};
