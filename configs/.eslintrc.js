module.exports = {
  root: true,
  extends: ['@react-native-community', 'plugin:prettier/recommended'],
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint'],
  rules: {
    'react-hooks/exhaustive-deps': [
      'warn',
      {
        enableDangerousAutofixThisMayCauseInfiniteLoops: true,
        additionalHooks: '(useAnimatedStyle|useAnimatedProps|useDerivedValue|useAnimatedGestureHandler)',
      },
    ],
    '@typescript-eslint/prefer-optional-chain': 'warn',
    'object-shorthand': ['warn', 'always'],
    'react-native/no-inline-styles': 'off',
    '@typescript-eslint/no-unused-vars': [
      'warn',
      { vars: 'all', args: 'after-used', argsIgnorePattern: '^_', ignoreRestSiblings: true },
    ],
  },
  env: {
    jest: true,
  },
};
